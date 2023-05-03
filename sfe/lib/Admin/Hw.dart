import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sfe/Admin/viw.dart';

void main() {
  runApp(MaterialApp(
    home: GG(),
  ));
}

class GG extends StatefulWidget {
  const GG({Key? key}) : super(key: key);

  @override
  State<GG> createState() => _GGState();
}

class _GGState extends State<GG> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> insertrecord() async {
    if (name.text != "" || email.text != "" || password.text != "") {
      try {
        String uri = "http://192.168.1.251:4433/phpscript/db.php";
        print("Zack1");
        var res = await http.post(Uri.parse(uri), body: {
          "name": name.text,
          "email": email.text,
          "password": password.text,
        });
        print(
            "Got response from server: ${res.body}"); // Add this line to print the response to the console
        var response = jsonDecode(res.body);
        print(response);
        if (response["success"] == "true") {
          print("Record inserted");
          name.text = " ";
          email.text = " ";
          password.text = " ";
        } else {
          print("some issue");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("please enter data ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Insert Data ")),
        body: Column(
          children: [
            TextField(controller: name),
            TextField(controller: email),
            TextField(controller: password),
            ElevatedButton(
                onPressed: () {
                  insertrecord();
                },
                child: Text("Click ME")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => view_data()));
                },
                child: Text("Show view"))
          ],
        ),
      ),
    );
  }
}
