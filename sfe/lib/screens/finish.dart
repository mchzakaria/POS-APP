import 'dart:math';

import 'package:intl/intl.dart';
import 'package:sfe/screens/tables.dart';
import 'package:sfe/widgets/widget.dart';
import 'package:http/http.dart' as http;

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

  Future<void> insertrecord() async {
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
    final randomId = generateRandomId();
    try {
      String uri = "http://localhost:4433/phpscript/insert_orders.php";
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
          "total_price":selectedItems[i][2],
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
                            print(Price=Price - int.parse(item[2])); 
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
                            insertrecord();

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
}
