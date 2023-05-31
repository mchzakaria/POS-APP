// import 'package:sfe/widgets/widget.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: Switch(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

// class NavigationPoints extends StatelessWidget {
//   final int currentPageIndex;

//   const NavigationPoints({Key? key, required this.currentPageIndex})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _buildNavigationPoint(currentPageIndex == 0),
//         const SizedBox(width: 8),
//         _buildNavigationPoint(currentPageIndex == 1),
//         const SizedBox(width: 8),
//         _buildNavigationPoint(currentPageIndex == 2),
//       ],
//     );
//   }

//   Widget _buildNavigationPoint(bool isActive) {
//     return Container(
//       width: 10,
//       height: 10,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isActive ? Colors.red : Colors.white,
//         border: Border.all(color: Colors.grey),
//       ),
//     );
//   }
// }

// class Switch extends StatefulWidget {
//   const Switch({Key? key}) : super(key: key);

//   @override
//   _SwitchState createState() => _SwitchState();
// }

// class _SwitchState extends State<Switch> {
//   final _pageController = PageController();
//   int _currentPageIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPageIndex = _pageController.page!.round();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             children: [
//               Welcome(),
//               Welcome2(),
//               Welcome3(), 
//             ],
//           ),
//           Positioned(
//             left: 40,
//             bottom: 16,
//             child: NavigationPoints(currentPageIndex: _currentPageIndex),
//           ),
//         ],
//       ),
//     );
//   }
// }
