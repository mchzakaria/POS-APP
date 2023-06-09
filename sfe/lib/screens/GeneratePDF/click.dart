import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sfe/widgets/widget.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'package:sfe/screens/GeneratePDF/mobile.dart'
    if (dart.library.html) 'package:sfe/screens/GeneratePDF/web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Create PDF'),
          onPressed: _createPDF,
        ),
      ),
    );
  }

  Future<void> _createPDF() async {
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
    final element4 = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult4 = element4.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult3!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //Date De Reservation ://
    final element5 = PdfTextElement(
      text: 'Date : 1-06-2023',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult5 = element5.draw(
      page: page,
      bounds: Rect.fromLTWH(200, layoutResult4!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );

    //2 -------------//
    final element6 = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult6 = element6.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult5!.bounds.bottom + 10,
          page.getClientSize().width, page.getClientSize().height),
    );

    // Item1 //
    final element7 = PdfTextElement(
      text:
          ' QTY   \t \t \t \t \t  ITEM  \t \t \t \t \t \t NOTE \t \t \t \t \t PRIX',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult7 = element7.draw(
      page: page,
      bounds: Rect.fromLTWH(45, layoutResult6!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //3 -------------//
    final element8 = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult8 = element8.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult7!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    // ITEM 2 //
    var element9, layoutResult9;
    for (var i = 0; i < 4; i++) {
      // list orders //
      element9 = PdfTextElement(
        text: 'Date : 1-06-2023',
        font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
      );
      layoutResult9 = element9.draw(
        page: page,
        bounds: Rect.fromLTWH(25, layoutResult8!.bounds.bottom + 20,
            page.getClientSize().width, page.getClientSize().height),
      );
    }

    //4 -------------//
    final element10 = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult10 = element10.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult9!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    // Total  //
    final element11 = PdfTextElement(
      text:
          ' Total :  \t \t \t \t \t \t \t \t \t  \t \t \t \t \t \t  \t  \t \t \t \t \t PRIX',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 15),
    );
    final layoutResult11 = element11.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult10!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    //4 -------------//
    final element12 = PdfTextElement(
      text:
          '----------------------------------------------------------------------------------------------------------------------------------------------------------',
      font: PdfStandardFont(PdfFontFamily.timesRoman, 10),
    );
    final layoutResult12 = element12.draw(
      page: page,
      bounds: Rect.fromLTWH(25, layoutResult11!.bounds.bottom + 20,
          page.getClientSize().width, page.getClientSize().height),
    );

    final element13 = PdfTextElement(
      text: ' Thank You !',
      font: PdfStandardFont(PdfFontFamily.helvetica, 20),
    );
    final layoutResult13 = element13.draw(
      page: page,
      bounds: Rect.fromLTWH(200, layoutResult12!.bounds.bottom + 20,
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
