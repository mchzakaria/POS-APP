// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'package:sfe/screens/food/plat.dart';
// class item extends StatelessWidget {
//   late List<String> data;
//   var num = 1;
//   item(this.data, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: IconButton(
//             icon: const Icon(
//               Icons.chevron_left,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: Container(
//             height: 400,
//             width: 330,
//             margin: const EdgeInsets.only(right: 16.0, left: 16.0, top: 120),
//             decoration: BoxDecoration(
//               border: Border.all(),
//             ),
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //item :
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(20.0),
//                       child: Image.asset(
//                         data[0],
//                         width: 155,
//                         height: 130,
//                       ),
//                     ),
//                     Flexible(
//                       child: Text(
//                         "  ${data[1]}  ",
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 //Quantity :
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(" Quantity : "),
//                     Container(
//                       height: 40,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           // color: Color.fromARGB(255, 255, 255, 255),
//                           borderRadius: BorderRadius.circular(5)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(4.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.remove,
//                                   color: Colors.black,
//                                 )),
//                             Text(num.toString()),
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.add,
//                                   color: Colors.black,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 //Speciale Note :
//                 Row(
//                   children: [
//                     Text(" Special Note :"),
//                     Text("TEXTFIELD"),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 // Price Total
//                 Row(
//                   children: [
//                     Text(" Price :"),
//                     Text("100 DH "),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 //buttons
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(onPressed: () {}, child: Text("Back")),
//                     ElevatedButton(onPressed: () {}, child: Text("Next")),
//                     ElevatedButton(onPressed: () {}, child: Text("Ok")),
//                   ],
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';

class item extends StatefulWidget {
  final List<String> data;

  const item(this.data, {Key? key}) : super(key: key);

  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  late List<String> data;
  int num = 1;

  @override
  void initState() {
    super.initState();
    data = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            height: 500,
            width: 330,
            margin: const EdgeInsets.only(right: 16.0, left: 16.0, top: 90),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                // Item:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        data[0],
                        width: 155,
                        height: 130,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "  ${data[1]}  ",
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 66, 66, 66),
                          fontWeight: FontWeight.bold,
                          fontFamily: "myfont",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // Quantity:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      " Quantity : ",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont",
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  num = num > 1 ? num - 1 : num;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                            Text(num.toString()),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  num += 1;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // Special Note:
                const Row(
                  children: [
                    Text(
                      " Special Note: ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont",
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter your note',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // Price Total
                Row(
                  children: [
                    const Text(" Price: "),
                    Text("${num * 100} DH "),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                //buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("Back")),
                    ElevatedButton(onPressed: () {}, child: const Text("Next")),
                    ElevatedButton(onPressed: () {}, child: const Text("Ok")),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
