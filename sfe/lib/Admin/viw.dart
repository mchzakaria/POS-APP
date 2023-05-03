import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class view_data extends StatefulWidget {
  const view_data({super.key});

  @override 
  State<view_data> createState() => _view_dataState();
}

class _view_dataState extends State<view_data> {
  List userdata = [];
  List<List<String>> dataList = [];

  Future<void> getrecord() async {
    String uri = "http://192.168.1.251:4433/phpscript/view.php";
    try {
      var response = await http.get(Uri.parse(uri));
      setState(() {
        userdata = jsonDecode(response.body);
      });
      print("First");
      print(userdata.runtimeType);

      for (var i = 0; i < userdata.length; i++) {
        List<String> rowList = [];

        rowList.add(userdata[i]['name']);
        rowList.add(userdata[i]['email']);
        rowList.add(userdata[i]['password']);

        dataList.add(rowList);
      }
      print(dataList.runtimeType);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getrecord();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text(" View data ")),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 187,
              height: 200,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                // color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 225, 224, 224)
                        .withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      dataList[index][0],
                      width: 155,
                      height: 130,
                    ),
                  ),
                  Text(
                    dataList[index][1],
                    style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont"),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    dataList[index][2],
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "myfont",
                    ),
                  ),
                ],
              ),
            );
          }),
    ));
  }
}
