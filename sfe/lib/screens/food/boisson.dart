import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:sfe/widgets/widget.dart';

// class Boissonsch extends StatelessWidget {
//   const Boissonsch({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.only(top: 15),
//           width: double.infinity,
//           child: Column(
//             children: [
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[0]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[0][0],
//                           width: 155,
//                           height: 130,
//                         ),
//                       ),
//                       Text(
//                         data[0][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[0][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[1]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[1][0],
//                           width: 165,
//                           height: 120,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         data[1][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[1][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               //SECOND
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[2]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(15.0),
//                         child: Image.asset(
//                           data[2][0],
//                           width: 155,
//                           height: 130,
//                         ),
//                       ),
//                       Text(
//                         data[2][1],
//                         style: const TextStyle(
//                             fontSize: 16,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[2][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[3]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[3][0],
//                           width: 165,
//                           height: 130,
//                         ),
//                       ),
//                       Text(
//                         data[3][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[3][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               //THIRD
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[4]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[4][0],
//                           width: 155,
//                           height: 130,
//                         ),
//                       ),
//                       Text(
//                         data[4][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[4][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[5]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[5][0],
//                           width: 165,
//                           height: 130,
//                         ),
//                       ),
//                       Text(
//                         data[5][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[5][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               //FOURTH
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[6]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[6][0],
//                           width: 155,
//                           height: 120,
//                         ),
//                       ),
//                       Text(
//                         data[6][1],
//                         style: const TextStyle(
//                             fontSize: 17,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         data[6][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 14),
//               Container(
//                 width: 187,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   // color: Colors.red,
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 225, 224, 224)
//                           .withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => item(data[7]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20.0),
//                         child: Image.asset(
//                           data[7][0],
//                           width: 155,
//                           height: 130,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         data[7][1],
//                         style: const TextStyle(
//                             fontSize: 14,
//                             color: Color.fromARGB(255, 66, 66, 66),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "myfont"),
//                       ),
//                       const SizedBox(
//                         height: 9,
//                       ),
//                       Text(
//                         data[7][2],
//                         style: const TextStyle(
//                           color: Colors.amber,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "myfont",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

class Boissonsch extends StatefulWidget {
  const Boissonsch({super.key});

  @override
  State<Boissonsch> createState() => _BoissonschState();
}

class _BoissonschState extends State<Boissonsch> {
  List userdata = [];
  List<List<String>> Boisson_ch = [];

  Future<void> getrecord() async {
    String uri = "http://localhost:4433/POS-APP/sfe/lib/PHP/final.php";
    try {
      var response =
          await http.post(Uri.parse(uri), body: {"type": "Boisson Chaude"});
      setState(() {
        userdata = jsonDecode(response.body);
      });

      for (var i = 0; i < userdata.length; i++) {
        List<String> rowList = [];

        rowList.add(userdata[i]['url']);
        rowList.add(userdata[i]['name']);
        rowList.add(userdata[i]['price']);
        rowList.add(userdata[i]['type']);
        rowList.add(userdata[i]['uid']);

        Boisson_ch.add(rowList);
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
        body: ListView.builder(
            itemCount: Boisson_ch.length,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                margin: const EdgeInsets.only(
                    bottom: 10, left: 40, right: 40, top: 10),
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
                child: GestureDetector(
                  onTap: () {
                    id_article = int.parse(Boisson_ch[index][4]);
                    print(id_article);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item(Boisson_ch[index]),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          Boisson_ch[index][0],
                          width: 155,
                          height: 130,
                        ),
                      ),
                      Text(
                        Boisson_ch[index][1],
                        style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont"),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${Boisson_ch[index][2]} DH",
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "myfont",
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Boissonsfr extends StatefulWidget {
  const Boissonsfr({super.key});

  @override
  State<Boissonsfr> createState() => _BoissonsfrState();
}

class _BoissonsfrState extends State<Boissonsfr> {
  List userdata = [];
  List<List<String>> Boisson_fr = [];
  Future<void> getrecord() async {
    String uri = "http://localhost:4433/POS-APP/sfe/lib/PHP/final.php";
    try {
      var response =
          await http.post(Uri.parse(uri), body: {"type": "Boisson Froide"});
      setState(() {
        userdata = jsonDecode(response.body);
      });

      for (var i = 0; i < userdata.length; i++) {
        List<String> rowList = [];

        rowList.add(userdata[i]['url']);
        rowList.add(userdata[i]['name']);
        rowList.add(userdata[i]['price']);
        rowList.add(userdata[i]['type']);
        rowList.add(userdata[i]['uid']);

        Boisson_fr.add(rowList);
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
        body: ListView.builder(
            itemCount: Boisson_fr.length,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                margin: const EdgeInsets.only(
                    bottom: 10, left: 30, right: 30, top: 10),
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
                child: GestureDetector(
                  onTap: () {
                    id_article = int.parse(Boisson_fr[index][4]);
                    print(id_article);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item(Boisson_fr[index]),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          Boisson_fr[index][0],
                          width: 155,
                          height: 130,
                        ),
                      ),
                      Text(
                        Boisson_fr[index][1],
                        style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont"),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${Boisson_fr[index][2]} Dollar ",
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "myfont",
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
