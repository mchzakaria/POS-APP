// import 'package:flutter/material.dart';
// import 'package:blue_thermal_printer/blue_thermal_printer.dart';
// void main() {
//   runApp(MaterialApp(
//     home: PrintScreen(),
//   ));
// }
// class PrintScreen extends StatelessWidget {
//   final printer = BluetoothThermalPrinter();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Print'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Print'),
//           onPressed: () async {
//             final devices = await printer.getBondedDevices();
//             final device = devices.firstWhere(
//               (element) => element.name == 'My Printer',
//               orElse: () => null,
//             );
//             if (device == null) {
//               print('No device found.');
//               return;
//             }
//             await printer.connect(device.address);
//             printer.write("Hello, world!\n");
//             printer.disconnect();
//           },
//         ),
//       ),
//     );
//   }
// }







