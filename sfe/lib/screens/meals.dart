// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MaterialApp(
//     home: Food(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
// class Food extends StatefulWidget {
//   const Food({super.key});
//   @override
//   State<Food> createState() => _FoodState();
// }
// class _FoodState extends State<Food> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 height: 100,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Plat",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                     //
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Soupe",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 height: 100,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Presentation",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                     //
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Jus",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 height: 100,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Boisson Gazeuse",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                     //
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Boisson Chaude",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 height: 100,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //
//                     Container(
//                       width: 150,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.black, width: 1),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Center(
//                             child: Text(
//                           "Desserts",
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sfe/screens/food/boisson.dart';
import 'package:sfe/screens/food/desserts.dart';
import 'package:sfe/screens/food/jus.dart';
import 'package:sfe/screens/food/plat.dart';
import 'package:sfe/screens/food/salade.dart';
import 'package:sfe/screens/food/soupe.dart';

class Food extends StatelessWidget {
  final String num;

  const Food({required this.num, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80, top: 40),
                child: Text(
                  'T-$num',
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(
                      context,
                      "Plat",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Plat()))),
                  _buildMenuItem(
                      context,
                      "Salade",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Salade()))),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(
                      context,
                      "Soupe",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Soupe()))),
                  _buildMenuItem(
                      context,
                      "Desserts",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Desserts()))),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(
                      context,
                      "Jus",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Jus()))),
                  _buildMenuItem(
                      context,
                      "Boisson Gazeuse",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Boissonsgaz()))),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(
                      context,
                      "Boisson Chaude",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Boissonsch()))),
                  _buildMenuItem(
                      context,
                      "Boisson Froide",
                      () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Boissonsfr()))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, VoidCallback onTap) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
