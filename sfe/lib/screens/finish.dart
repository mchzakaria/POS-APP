import 'dart:math';

import 'package:intl/intl.dart';
import 'package:sfe/screens/tables.dart';
import 'package:sfe/widgets/widget.dart';
import 'package:http/http.dart' as http;

import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'package:sfe/screens/GeneratePDF/mobile.dart'
    if (dart.library.html) 'package:sfe/screens/GeneratePDF/web.dart';

class Finish extends StatefulWidget {
  const Finish({super.key});

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  late bool _hasItems = true;
  int Price = 0;
  var p = 0;
  List<String> order = [];
  // String finali = "";

  @override
  void initState() {
    totalPrice();
    super.initState();
  }

  // gga() {
  //   print(selectedItems);
  //   for (int i = 0; i < selectedItems.length; i++) {
  //     for (int j = 0; j < selectedItems[i].length; j++) {
  //       order.add(selectedItems[i][j]);
  //     }
  //   }
  //   print(order);
  //   finali = order.join(" ");
  //   print(finali);
  // }

  String generateRandomId({length = 6}) {
    final random = Random();
    const chars = 'abcdefghij456krstuvwxyz0123789_';
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }

  var date;
  Future<void> insertrecord() async {
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
    final randomId = generateRandomId();
    try {
      String uri =
          "http://localhost:4433/POS-APP/sfe/lib/PHP/insert_orders.php";
      var res;
      for (var i = 0; i < selectedItems.length; i++) {
        res = await http.post(Uri.parse(uri), body: {
          "id_order": randomId,
          "date_order": formattedDate,
          "id_article": selectedItems[i][4],
          "quantity": selectedItems[i][1],
          "note": selectedItems[i][3],
          "num_table": number.toString(),
          "nom_serveur": fullname.toString(),
          "total_price": selectedItems[i][2],
          "payed": "NO",
        });
      }
      var response = jsonDecode(res.body);
      print(response);
      if (response["success"] == "true") {
        print("Record inserted");
      } else {
        print("some issue");
      }
    } catch (e) {
      print(e);
    }
    date = formattedDate;
  }

  void totalPrice() {
    for (int i = 0; i < selectedItems.length; i++) {
      int b = int.parse(selectedItems[i][2]);
      p += b;
    }
    Price = p;
  }

  @override
  Widget build(BuildContext context) {
    if (selectedItems.isEmpty) {
      return Food();
    } else {
      return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'TABLE:             ${number}',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'ORDER LIST',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: selectedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = selectedItems[index];
                    return ListTile(
                      title: Text(item[0],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont")), // item name
                      subtitle: Text(
                        'Quantity: ${item[1]}, Price: ${item[2]} DH , Note: ${item[3]}',
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            selectedItems.removeAt(index);
                            print(selectedItems);
                            print(Price = Price - int.parse(item[2]));
                            _hasItems = selectedItems.isNotEmpty;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Column(
                  children: [
                    Center(
                      child: Text("Total Price : $Price DH",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont")),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // selectedItems.clear();
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                          ),
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // print(selectedItems);
                            // for (int i = 0; i < selectedItems.length; i++) {
                            //   print(
                            //       "${selectedItems[i][0]} ${selectedItems[i][1]} ${selectedItems[i][2]} ${selectedItems[i][3]} ${selectedItems[i][4]}");
                            // }
                            // insertrecord();
                            _createPDF(selectedItems, Price, na1me, na2me,
                                number, date);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                          ),
                          child: const Text('Confirm'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Future<void> _createPDF(List<List<String>> oitems, int price, dynamic na1me,
      dynamic na2me, String number, dynamic date) async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    final font1 = PdfStandardFont(PdfFontFamily.timesRoman, 15);
    final font2 = PdfStandardFont(PdfFontFamily.helvetica, 30);
    final font3 = PdfStandardFont(PdfFontFamily.timesRoman, 15);
    final element1 = PdfTextElement(
      text: 'Welcome To Zack Restaurant !',
      font: font2,
    );
    final element2 = PdfTextElement(
      text: 'Address: 512 Rue KHAOULA CASABLANCA',
      font: font1,
    );
    final element3 = PdfTextElement(
      text: 'Tel: +212-67-90-28-04-03',
      font: font3,
    );
    final tiree = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult1 = element1.draw(
      page: page,
      bounds: Rect.fromLTWH(
          66, 0, page.getClientSize().width, page.getClientSize().height),
    );
    final layoutResult2 = element2.draw(
      page: page,
      bounds: Rect.fromLTWH(100, layoutResult1!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );
    final layoutResult3 = element3.draw(
      page: page,
      bounds: Rect.fromLTWH(180, layoutResult2!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );

    //1 -------------//
    final layoutResult4 = tiree.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult3!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //Date De Reservation ://
    final element5 = PdfTextElement(
      text: 'Date : 08/06/2023',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult5 = element5.draw(
      page: page,
      bounds: Rect.fromLTWH(50, layoutResult4!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );
    // Num de Table : //
    final element6 = PdfTextElement(
      text: 'Table Num : $number',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult6 = element6.draw(
      page: page,
      bounds: Rect.fromLTWH(200, layoutResult5!.bounds.bottom - 17,
          page.getClientSize().width, page.getClientSize().height),
    );
    // Nom Du Serveur : //
    final element7 = PdfTextElement(
      text: 'Serveur: $na1me $na2me',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult7 = element7.draw(
      page: page,
      bounds: Rect.fromLTWH(330, layoutResult5.bounds.bottom - 17,
          page.getClientSize().width, page.getClientSize().height),
    );
    //2 -------------//
    final layoutResult8 = tiree.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult7!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );

    // Item1 //
    final element9 = PdfTextElement(
      text:
          ' QTY   \t \t \t \t \t  ITEM  \t \t \t \t \t \t NOTE \t \t \t \t \t PRIX',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult9 = element9.draw(
      page: page,
      bounds: Rect.fromLTWH(45, layoutResult8!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //3 -------------//
    final layoutResult10 = tiree.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult9!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    // ITEM 2 //
    var vvs = layoutResult10!.bounds.bottom;
    for (var i = 0; i < oitems.length; i++) {
      // list orders //
      final el0 = PdfTextElement(
        text: '${oitems[i][0]} \t \t \t \t \t ',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
      );
      final lr0 = el0.draw(
        page: page,
        bounds: Rect.fromLTWH(
            170, vvs, page.getClientSize().width, page.getClientSize().height),
      );
      final el1 = PdfTextElement(
        text: '${oitems[i][1]} \t \t \t \t \t ',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
      );
      final lr1 = el1.draw(
        page: page,
        bounds: Rect.fromLTWH(
            60, vvs, page.getClientSize().width, page.getClientSize().height),
      );
      final el2 = PdfTextElement(
        text: '${oitems[i][2]} \t \t \t \t \t ',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
      );
      final lr2 = el2.draw(
        page: page,
        bounds: Rect.fromLTWH(
            480, vvs, page.getClientSize().width, page.getClientSize().height),
      );
      final el3 = PdfTextElement(
        text: '${oitems[i][3]} \t \t \t \t \t ',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
      );
      final lr3 = el3.draw(
        page: page,
        bounds: Rect.fromLTWH(
            320, vvs, page.getClientSize().width, page.getClientSize().height),
      );
      vvs += 30;
    }
    var tt = vvs;

    //4 -------------//
    final layoutResult11 = tiree.draw(
      page: page,
      bounds: Rect.fromLTWH(
          25, tt + 10, page.getClientSize().width, page.getClientSize().height),
    );

    // Total  //
    final element12 = PdfTextElement(
      text:
          ' Total :  \t \t \t \t \t \t \t \t \t  \t \t \t \t \t \t  \t  \t \t \t \t $price DH ',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult12 = element12.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult11!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //4 -------------//
    final layoutResult13 = tiree.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult12!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    final element14 = PdfTextElement(
      text: ' Thank You !',
      font: PdfStandardFont(PdfFontFamily.helvetica, 20),
    );
    final layoutResult14 = element14.draw(
      page: page,
      bounds: Rect.fromLTWH(200, layoutResult13!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    page.graphics.drawImage(
        PdfBitmap(await _readImageData('codebare3.png')),
        Rect.fromLTWH(0, layoutResult13!.bounds.bottom + 20,
            page.getClientSize().width, 100));

    // change to bytes and SAVE
    List<int> bytes = await document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'order.pdf');
  }
}

Future<Uint8List> _readImageData(String name) async {
  final data = await rootBundle.load('images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
