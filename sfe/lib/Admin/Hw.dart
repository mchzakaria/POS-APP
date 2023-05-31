import 'package:flutter/material.dart';
import 'package:sfe/Admin/add_user.dart';
import 'package:sfe/Admin/add_product.dart';
import 'package:sfe/Admin/getallusers.dart';
import 'package:sfe/Admin/ShowProducts.dart';
import 'package:sfe/screens/tables.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AdminPage(),
  ));
}

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(" Hello Admin ",
              style: TextStyle(fontSize: 18, fontFamily: "myfont")),
          centerTitle: true,
          backgroundColor: Colors.amber[400],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  title: const Text("Add Product"),
                  leading: Container(
                      width: 27,
                      height: 27,
                      color: Colors.amber,
                      child: const Icon(Icons.add_box, color: Colors.white)),
                  trailing: const Icon(Icons.chevron_left),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const addProduct()));
                  },
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: const Text("Get All Users"),
                  leading: Container(
                      width: 27,
                      height: 27,
                      color: Colors.amber,
                      child: const Icon(Icons.group, color: Colors.white)),
                  trailing: const Icon(Icons.chevron_left),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => getallUsers()));
                  },
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: const Text("Show Product"),
                  leading: Container(
                      width: 27,
                      height: 27,
                      color: Colors.amber,
                      child: const Icon(Icons.check_box, color: Colors.white)),
                  trailing: const Icon(Icons.chevron_left),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => view_data()));
                  },
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: const Text(" Add User "),
                  leading: Container(
                      width: 27,
                      height: 27,
                      color: Colors.amber,
                      child: const Icon(Icons.person, color: Colors.white)),
                  trailing: const Icon(Icons.chevron_left),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => addUser()));
                  },
                ),
              ),
              const SizedBox(height: 30),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tables()),
                    );
                  },
                  child: const Text(" Switch To Serveur ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 245, 149, 39)))),
              const SizedBox(height: 20),
              // OutlinedButton(
              //   onPressed: () {},
              //   child: const Text(" Print ",
              //       style: TextStyle(color: Color.fromARGB(255, 25, 25, 25))),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
