// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class addProduct extends StatefulWidget {
  const addProduct({super.key});

  @override
  State<addProduct> createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  TextEditingController url = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController type = TextEditingController();

  @override
  void dispose() {
    url.dispose();
    name.dispose();
    price.dispose();
    type.dispose();
    super.dispose();
  }

  Future<void> insertrecord() async {
    if (url.text != "" ||
        name.text != "" ||
        price.text != "" ||
        type.text != "") {
      try {
        String uri = "http://localhost:4433/POS-APP/sfe/lib/PHP/add_product.php";
        var res = await http.post(Uri.parse(uri), body: {
          "url": url.text,
          "name": name.text,
          "price": price.text,
          "type": type.text,
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
                    Image.asset("assets/icons/checked.png", width: 40),
                    const Expanded(
                      child: Text('Added Succesfully '),
                    ),
                  ],
                ),
              );
            },
          );
          url.text = "";
          name.text = "";
          price.text = "";
          type.text = "";
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
          title: const Text("Add Product"),
          centerTitle: true,
          backgroundColor: Colors.amber[400]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Card(
                  elevation: 15,
                  child: ListTile(
                      title: const Text("Product Url",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: url,
                        decoration: const InputDecoration(
                          hintText: "Enter The Url",
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
                      title: const Text("Product Name",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: name,
                        decoration: const InputDecoration(
                          hintText: "Enter Product Name",
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
                      title: const Text("Price",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: price,
                        decoration: const InputDecoration(
                          hintText: "Enter The Price",
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
                      title: const Text("Product Type",
                          style: TextStyle(color: Colors.blue)),
                      subtitle: TextFormField(
                        controller: type,
                        decoration: const InputDecoration(
                          hintText: "Enter The Type",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: insertrecord,
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
