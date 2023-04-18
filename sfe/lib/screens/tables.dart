import 'package:flutter/material.dart';
import 'package:sfe/screens/meals.dart';

void main() {
  runApp(const MaterialApp(
    home: Tables(),
    debugShowCheckedModeBanner: false,
  ));
}

var num;

class Tables extends StatefulWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 85.0, bottom: 80, top: 80),
                child: Text(
                  'Choose a Table',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '01',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-01',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '02',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-02',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '03',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-03',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '04',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-04',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '05',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-05',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '06',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-06',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '07',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-07',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '08',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-08',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '09',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-09',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '10',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-10',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '11',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-11',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food(
                                    num: '12',
                                  )),
                        );
                      },
                      child: const Center(
                          child: Text(
                        'T-12',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
