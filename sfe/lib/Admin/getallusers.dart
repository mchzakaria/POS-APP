// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class getallUsers extends StatefulWidget {
  const getallUsers({super.key});

  @override
  State<getallUsers> createState() => _getallUsersState();
}

class _getallUsersState extends State<getallUsers> {
  List userdata = [];
  String id = "";
  List<List<String>> dataList = [];

  Future<void> getrecord() async {
    String uri = "http://localhost:4433/phpscript/get_allusers.php";
    try {
      var response = await http.get(Uri.parse(uri));
      setState(() {
        userdata = jsonDecode(response.body);
      });
      // print("First");
      // print(userdata.runtimeType);
      // print(userdata.length);

      for (var i = 0; i < userdata.length; i++) {
        List<String> rowList = [];

        rowList.add(userdata[i]['uid']);
        rowList.add(userdata[i]['username']);
        rowList.add(userdata[i]['password']);
        rowList.add(userdata[i]['first_name']);
        rowList.add(userdata[i]['last_name']);
        rowList.add(userdata[i]['job']);

        dataList.add(rowList);
      }
      // print("Data Getted Succesfully");
      // print(dataList.runtimeType);
      // print(dataList.length);
    } catch (e) {
      print(e);
    }
  }

  Future<void> DeleteUser(String ide) async {
    try {
      String uri = "http://localhost:4433/phpscript/delete_users.php";
      var res = await http.post(Uri.parse(uri), body: {
        "uid": ide,
      });
      var response = jsonDecode(res.body);
      print(response);
      if (response["success"] == "true") {
        print("Record Deleted");
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
                    child: Text('Deleted Succesfully '),
                  ),
                ],
              ),
            );
          },
        );
      } else {
        print("some issue");
      }
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
      appBar: AppBar(
          title: const Text("Show Users"), backgroundColor: Colors.amber[400]),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                subtitle: Text(
                    "Username: ${dataList[index][1]} ; Password: ${dataList[index][2]}"),
                title: Text(
                  "${dataList[index][5]} : ${dataList[index][3]} ${dataList[index][4]}",
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ModifyUser(
                                        datagetted: dataList[index],
                                      )));
                        }),
                    IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          id = dataList[index][0];
                          DeleteUser(id);
                        }),
                  ],
                ),
              ),
            );
          }),
    ));
  }
}

// 7erf lwl mn smia o lknia o dirhhum lte7t : Done
// link name serveur with mysql php : Done
// switch to serveur : Done
// admin : affiche l'historique des commandes
// logout
// search product
// Menu  bar Animation


class ModifyUser extends StatefulWidget {
  List<String> datagetted = [];
  ModifyUser({super.key, required this.datagetted});

  @override
  State<ModifyUser> createState() => _ModifyUserState();
}

class _ModifyUserState extends State<ModifyUser> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController job = TextEditingController();

  List<String> _editedUserData = [];

  @override
  void initState() {
    super.initState();
    _editedUserData = List<String>.from(widget.datagetted);
    firstname.text = _editedUserData[3];
    lastname.text = _editedUserData[4];
    username.text = _editedUserData[1];
    password.text = _editedUserData[2];
    job.text = _editedUserData[5];
  }

  Future<void> ModifyUser() async {
    if (firstname.text != "" ||
        lastname.text != "" ||
        username.text != "" ||
        password.text != "" ||
        job.text != "") {
      try {
        String uri = "http://localhost:4433/phpscript/modify_users.php";
        var res = await http.post(Uri.parse(uri), body: {
          "uid": _editedUserData[0],
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
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const getallUsers()),
            (route) => false,
          );
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
                onPressed: ModifyUser,
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, fixedSize: const Size(100, 10)),
                child: const Text("Modify",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}
