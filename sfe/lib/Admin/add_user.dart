// ignore_for_file: use_build_context_synchronously

import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class addUser extends StatefulWidget {
  const addUser({super.key});

  @override
  State<addUser> createState() => _addUserState();
}

class _addUserState extends State<addUser> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController job = TextEditingController();

  // @override
  // void dispose() {
  //   firstname.dispose();
  //   lastname.dispose();
  //   username.dispose();
  //   password.dispose();
  //   job.dispose();
  //   super.dispose();
  // }

  Future<void> adduser() async {
    if (firstname.text != "" ||
        lastname.text != "" ||
        username.text != "" ||
        password.text != "" ||
        job.text != "") {
      try {
        String uri = "http://localhost:4433/POS-APP/sfe/lib/PHP/add_users.php";
        var res = await http.post(Uri.parse(uri), body: {
          "username": username.text,
          "password": password.text,
          "first_name": firstname.text,
          "last_name": lastname.text,
          "job": job.text,
        });
        var response = jsonDecode(res.body);
        print(response);
        if (response["success"] == "true") {
          print("Record inserted");
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Icon(Icons.delete, color: Colors.red),
                    Image.asset("assets/icons/checked.png", width: 40),
                    const Expanded(
                      child: Text('Added Succesfully '),
                    ),
                  ],
                ),
              );
            },
          );
          username.text = "";
          password.text = "";
          firstname.text = "";
          lastname.text = "";
          job.text = "";
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
      appBar: AppBar(
          title: const Text("Add User"),
          centerTitle: true,
          backgroundColor: Colors.amber[400]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     SizedBox(
            //       width: 400,
            //       height: 100,
            //       child: Container(
            //         decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(100.0),
            //             bottomRight: Radius.circular(100.0),
            //           ),
            //           color: Color.fromARGB(255, 197, 221, 240),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 90, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("First Name",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: firstname,
                        decoration: const InputDecoration(
                          hintText: "Enter First Name",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("Last Name",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: lastname,
                        decoration: const InputDecoration(
                          hintText: "Enter Last Name",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("Username",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: username,
                        decoration: const InputDecoration(
                          hintText: "Enter The Username",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("Password",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: password,
                        decoration: const InputDecoration(
                          hintText: "Enter The Password",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("Job",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: job,
                        decoration: const InputDecoration(
                          hintText: "Enter The Job",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: adduser,
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, fixedSize: const Size(100, 10)),
                child: const Text("Add",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}
