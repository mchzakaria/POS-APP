// // import 'package:flutter/material.dart';
// // void main() {
// //   runApp(const MaterialApp(
// //     home: Food(),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }
// // class Food extends StatefulWidget {
// //   const Food({super.key});
// //   @override
// //   State<Food> createState() => _FoodState();
// // }
// // class _FoodState extends State<Food> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.transparent,
// //           elevation: 0,
// //         ),
// //         body: Container(
// //           alignment: Alignment.center,
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Container(
// //                 padding: const EdgeInsets.only(left: 10, right: 10),
// //                 height: 100,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Plat",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                     //
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Soupe",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Container(
// //                 padding: const EdgeInsets.only(left: 10, right: 10),
// //                 height: 100,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Presentation",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                     //
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Jus",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Container(
// //                 padding: const EdgeInsets.only(left: 10, right: 10),
// //                 height: 100,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Boisson Gazeuse",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                     //
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Boisson Chaude",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Container(
// //                 padding: const EdgeInsets.only(left: 10, right: 10),
// //                 height: 100,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     //
// //                     Container(
// //                       width: 150,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue[100],
// //                         borderRadius: BorderRadius.circular(10),
// //                         border: Border.all(color: Colors.black, width: 1),
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {},
// //                         child: const Center(
// //                             child: Text(
// //                           "Desserts",
// //                           style: TextStyle(
// //                               fontSize: 17, fontWeight: FontWeight.bold),
// //                         )),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:sfe/screens/food/boisson.dart';
// import 'package:sfe/screens/food/desserts.dart';
// import 'package:sfe/screens/food/jus.dart';
// import 'package:sfe/screens/food/plat.dart';
// import 'package:sfe/screens/food/salade.dart';
// import 'package:sfe/screens/food/soupe.dart';
// import 'package:sfe/widgets/widget.dart';
// class Food extends StatelessWidget {
//   final String num;
//   const Food({required this.num, Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
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
//           )),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 80, top: 40),
//                 child: Text(
//                   'T-$num',
//                   style: const TextStyle(
//                       fontSize: 26, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildMenuItem(
//                       context,
//                       "Plat",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Plat())),
//                       Icons.add),
//                   _buildMenuItem(
//                       context,
//                       "Salade",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Salade())),
//                       Icons.add),
//                 ],
//               ),
//               const SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildMenuItem(
//                       context,
//                       "Soupe",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Soupe())),
//                       Icons.add),
//                   _buildMenuItem(
//                       context,
//                       "Desserts",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Desserts())),
//                       Icons.add),
//                 ],
//               ),
//               const SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildMenuItem(
//                       context,
//                       "Jus",
//                       () => Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => const Jus())),
//                       Icons.add),
//                   _buildMenuItem(
//                       context,
//                       "Boisson Gazeuse",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Boissonsgaz())),
//                       Icons.add),
//                 ],
//               ),
//               const SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildMenuItem(
//                       context,
//                       "Boisson Chaude",
//                       () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Boissonsch())),
//                       Icons.add),
//                   _buildMenuItem(
//                       context,
//                       "Boisson Froide",
//                       () => Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const Boissonsfr(),
//                             ),
//                           ),
//                       Icons.add),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   // Widget _buildMenuItem(
//   //     BuildContext context, String title, Icon ico, VoidCallback onTap) {
//   //   return Container(
//   //     height: 70,
//   //     width: 160,
//   //     decoration: BoxDecoration(
//   //       color: Colors.blue[100],
//   //       borderRadius: BorderRadius.circular(10),
//   //       border: Border.all(color: Colors.black, width: 1),
//   //     ),
//   //     child: GestureDetector(
//   //       onTap: onTap,
//   //       child: Center(
//   //           child: Column(
//   //         children: [
//   //           Text(
//   //             title,
//   //             style: const TextStyle(
//   //               fontSize: 17,
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           ),
//   //         ],
//   //       )),
//   //     ),
//   //   );
//   // }
//   Widget _buildMenuItem(
//       BuildContext context, String title, VoidCallback onTap, IconData icon) {
//     return Container(
//       height: 70,
//       width: 160,
//       decoration: BoxDecoration(
//         color: Colors.blue[100],
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.black, width: 1),
//       ),
//       child: GestureDetector(
//         onTap: onTap,
//         child: Center(
//           child: Column(
//             children: [
//               Icon(
//                 icon,
//                 size: 30,
//                 color: Colors.black,
//               ),
//               SizedBox(height: 5),
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api

import 'package:sfe/screens/finish.dart';
import 'package:sfe/screens/food/boisson.dart';
import 'package:sfe/screens/food/desserts.dart';
import 'package:sfe/screens/food/jus.dart';
import 'package:sfe/screens/food/plat.dart';
import 'package:sfe/screens/food/salade.dart';
import 'package:sfe/screens/food/soupe.dart';
import 'package:badges/badges.dart' as badges;
import 'package:sfe/widgets/widget.dart';

var id_article;

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int _currentPageIndex = 0;
  int _selectedPageIndex = 0;
  final String num = "";

  void _navigateToPage(int pageIndex) {
    setState(() {
      _currentPageIndex = pageIndex;
      _selectedPageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  badges.Badge(
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.red,
                      padding: EdgeInsets.all(6),
                    ),
                    badgeContent: Text((selectedItems.length).toString(),
                        style: TextStyle(color: Colors.white)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Finish()),
                        );
                      },
                      child: const Icon(Icons.shopping_bag_outlined,
                          size: 32, color: Colors.white),
                    ),
                  ),
                  _buildSidebarIconButton(
                      "assets/icons/cafe.png", "Hot Drinks", 0),
                  _buildSidebarIconButton("assets/icons/j32.png", "Juice", 1),
                  _buildSidebarIconButton(
                      "assets/icons/icecoffee32.png", "Cold Drinks", 2),
                  _buildSidebarIconButton("assets/icons/s2.png", "Salad", 3),
                  _buildSidebarIconButton("assets/icons/soupe.png", "Soup", 4),
                  _buildSidebarIconButton(
                      "assets/icons/burger.png", "Dishes", 5),
                  _buildSidebarIconButton("assets/icons/d32.png", "Dessert", 6),
                  SizedBox(height: 24),
                  CircleAvatar(
                      backgroundColor: Colors.red[800],
                      child: Text("$na1me $na2me",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
          ),
          // Right content
          Expanded(
            flex: 3,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: _buildPage(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarIconButton(String iconData, String label, int index) {
    return GestureDetector(
      onTap: () {
        _navigateToPage(index);
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _selectedPageIndex == index
                  ? const Color.fromARGB(255, 244, 11, 11).withOpacity(0.2)
                  : Colors.transparent,
            ),
            child: Image.asset(iconData, color: Colors.white),
          ),
          Text(label,
              style:
                  const TextStyle(color: Colors.white, fontFamily: "myfont")),
        ],
      ),
    );
  }

  Widget _buildPage() {
    switch (_currentPageIndex) {
      case 0:
        return const Boissonsch();
      case 1:
        return const Jus();
      case 2:
        return const Boissonsfr();
      case 3:
        return const Salade();
      case 4:
        return const Soupe();
      case 5:
        return const Plat();
      case 6:
        return const Desserts();
      default:
        return Container();
    }
  }
}
