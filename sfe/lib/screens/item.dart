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

// ignore_for_file: library_private_types_in_public_api, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:sfe/screens/finish.dart';
import 'package:sfe/widgets/widget.dart';

List<List<String>> selectedItems = [];

class item extends StatefulWidget {
  final List<String> data;

  const item(this.data, {Key? key}) : super(key: key);

  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  List<String> data = [];
  int quantity = 1;
  TextEditingController specialnote = TextEditingController();

  @override
  void initState() {
    super.initState();
    data = widget.data;
  }

  @override
  void dispose() {
    super.dispose();
    specialnote.dispose();
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
            height: 450,
            width: 330,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 194, 194).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                // Item:
                Container(
                  // color: Colors.green,
                  margin: const EdgeInsets.only(left: 17),
                  child: Row(
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
                ),
                const SizedBox(height: 40),
                // Quantity:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      " Quantity : ",
                      style: TextStyle(
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
                                  quantity =
                                      quantity > 1 ? quantity - 1 : quantity;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                            Text(quantity.toString()),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity += 1;
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
                const SizedBox(height: 30),
                // Special Note:
                Row(
                  children: [
                    const Text(
                      " Special Note: ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: specialnote,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter your note',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Price Total
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " Total Price: ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont",
                      ),
                    ),
                    Text(
                      " ${quantity * int.parse(data[2])} DH ",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.bold,
                        fontFamily: "myfont",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber[400],
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Are you sure?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              content: Text(
                                "Do you really want to cancel?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.red[100]),
                                  ),
                                  onPressed: () {
                                    // Add your code here for "Yes" button press
                                    Navigator.popUntil(
                                        context, (route) => route.isFirst);
                                    selectedItems.clear();
                                  },
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.grey[100]),
                                  ),
                                  onPressed: () {
                                    // Add your code here for "No" button press
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Colors.white,
                              elevation: 4.0,
                            );
                          },
                        );
                      },
                      child: const Text("Cancel Order"),
                    ),
                    //if the user click the button "Next" , the item will be saved with quantity and price
                    //and take the user back to the food page to choose another item.
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber[400],
                      ),
                      onPressed: () {
                        // Save the selected food item's details in a list
                        List<String> selectedItemDetails = [
                          data[1], // item name
                          quantity.toString(), // quantity
                          (quantity * int.parse(data[2]))
                              .toString(), // total price
                          specialnote.text, //message
                          data[4].toString() //id
                        ];
                        selectedItems.add(selectedItemDetails);
                        // Show a message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                '${selectedItemDetails[1]} ${selectedItemDetails[0]}  ${selectedItemDetails[3]} added !'),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                        // Take the user back to the food page to choose another item
                        Navigator.pop(context, selectedItemDetails);
                        // Navigator.push(context, route);
                      },
                      child: const Text("Next"),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber[400],
                        ),
                        onPressed: () {
                          List<String> selectedItemDetails = [
                            data[1], // item name
                            quantity.toString(), // quantity
                            (quantity * int.parse(data[2]))
                                .toString(), // total price
                            specialnote.text, //message
                            data[4].toString() //id
                          ];
                          selectedItems.add(selectedItemDetails);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const Finish()),
                          // );
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Food()),
                          );
                        },
                        child: const Text("Finish")),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
