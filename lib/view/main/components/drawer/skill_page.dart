import 'package:flutter/material.dart';
import 'dart:math';

import 'package:portfolio/res/constants.dart';

// import 'package:flutter/material.dart';
// import 'package:portfolio/res/constants.dart';

// class SkillPage extends StatelessWidget {
//   const SkillPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bgColor, // Deep blue
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             // Central ERP circle
//             SizedBox(
//               width: 500,
//               height: 500,

//               child: Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: const LinearGradient(
//                       colors: [Colors.blue, Colors.deepPurple],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                     border: Border.all(color: Colors.white, width: 3),
//                   ),
//                   child: Text(
//                     'SM',
//                     style: TextStyle(
//                       fontSize: 32,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // Top
//             _moduleItem("Inventory", Icons.inventory, 0, -160),
//             // Top right
//             _moduleItem("Services", Icons.miscellaneous_services, 110, -110),
//             // Right
//             _moduleItem("HR", Icons.people, 160, 0),
//             // Bottom right
//             _moduleItem("MRP", Icons.list_alt, 110, 110),
//             // Bottom
//             _moduleItem("Production", Icons.factory, 0, 160),
//             // Bottom left
//             _moduleItem("Purchasing", Icons.shopping_cart, -110, 110),
//             // Left
//             _moduleItem("CRM", Icons.support_agent, -160, 0),
//             // Top left
//             _moduleItem("Sales", Icons.sell, -110, -110),
//             // Additional top center
//             _moduleItem("Financials", Icons.attach_money, 0, -230),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper widget to position module
//   static Widget _moduleItem(String label, IconData icon, double dx, double dy) {
//     return Positioned(
//       left: 180 + dx, //
//       top: 300 + dy, //
//       child: Column(
//         children: [
//           Icon(icon, color: Colors.white, size: 30),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: const TextStyle(color: Colors.white, fontSize: 12),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:math';

// import 'package:portfolio/res/constants.dart';

// class SkillPage extends StatelessWidget {
//   const SkillPage({super.key});

//   final List<ErpModule> modules = const [
//     ErpModule("Financials", Icons.attach_money),
//     ErpModule("Inventory", Icons.inventory),
//     ErpModule("Services", Icons.miscellaneous_services),
//     ErpModule("HR", Icons.people),
//     ErpModule("MRP", Icons.list_alt),
//     ErpModule("Production", Icons.factory),
//     ErpModule("Purchasing", Icons.shopping_cart),
//     ErpModule("CRM", Icons.support_agent),
//     ErpModule("Sales", Icons.sell),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = 150.0;

//     return Scaffold(
//       backgroundColor: bgColor,
//       body: Stack(
//         children: [
//           // Top text
//           Positioned(
//             top: 80,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: const [
//                 Text(
//                   "DID YOU KNOW?",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Text(
//                     "Nearly 50% of companies are soon planning or have already started to acquire or upgrade an ERP System",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 14, color: Colors.white70),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Central ERP Circle
//           Positioned(
//             left: center.dx - 75,
//             top: center.dy - 75,
//             child: Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: const LinearGradient(
//                   colors: [g1Color, g2Color],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 border: Border.all(color: Colors.white, width: 3),
//               ),
//               child: const Center(
//                 child: Text(
//                   'State Management',
//                   style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Circular module placement
//           ...List.generate(modules.length, (index) {
//             final angle = (2 * pi / modules.length) * index;
//             final dx = center.dx + radius * cos(angle) - 30;
//             final dy = center.dy + radius * sin(angle) - 30;

//             return Positioned(
//               left: dx,
//               top: dy,
//               child: Column(
//                 children: [
//                   Icon(modules[index].icon, color: Colors.white, size: 28),
//                   const SizedBox(height: 4),
//                   Text(
//                     modules[index].title,
//                     style: const TextStyle(color: Colors.white, fontSize: 12),
//                   ),
//                 ],
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// class ErpModule {
//   final String title;
//   final IconData icon;

//   const ErpModule(this.title, this.icon);
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_dash/flutter_dash.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:portfolio/res/constants.dart';

// class SkillPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bgColor,
//       body: Center(child: _skillComponent(stateManagement)),
//     );
//   }

//   Widget _skillComponent(List<SkillModel> items) {
//     return Container(
//       width: 350,
//       padding: const EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [g1Color, g2Color],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Left Circle and Dotted Line
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: List.generate(items.length * 2 - 1, (index) {
//               if (index.isOdd) {
//                 return Dash(
//                   direction: Axis.vertical,
//                   length: 30,
//                   dashLength: 4,
//                   dashColor: Colors.white70,
//                 );
//               } else {
//                 int itemIndex = index ~/ 2;
//                 return CircleAvatar(
//                   radius: 20,
//                   backgroundColor: Colors.white,
//                   child: Image.asset(items[itemIndex].icon),
//                 );
//               }
//             }),
//           ),
//           const SizedBox(width: 16),

//           // Text Content
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: List.generate(items.length, (index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 50),
//                 child: Text(
//                   "${index + 1}. ${items[index].name}",
//                   style: const TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               );
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SkillPage extends StatelessWidget {
//   const SkillPage({super.key});

//   // final List<ErpModule> modules = const [
//   //   ErpModule("Financials", Icons.attach_money),
//   //   ErpModule("Inventory", Icons.inventory),
//   //   ErpModule("Services", Icons.miscellaneous_services),
//   //   ErpModule("HR", Icons.people),
//   //   ErpModule("MRP", Icons.list_alt),
//   //   ErpModule("Production", Icons.factory),
//   //   ErpModule("Purchasing", Icons.shopping_cart),
//   //   ErpModule("CRM", Icons.support_agent),
//   //   ErpModule("Sales", Icons.sell),
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = 150.0;

//     return Scaffold(
//       backgroundColor: bgColor,
//       body: Stack(
//         children: [
//           // Top text
//           Positioned(
//             top: 80,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: const [
//                 Text(
//                   "DID YOU KNOW?",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Text(
//                     "Nearly 50% of companies are soon planning or have already started to acquire or upgrade an ERP System",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 14, color: Colors.white70),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // CustomPaint for connecting lines
//           CustomPaint(
//             size: size,
//             painter: LinePainter(
//               center: center,
//               radius: radius,
//               count: database.length,
//             ),
//           ),

//           // Center ERP Circle
//           Positioned(
//             left: center.dx - 75,
//             top: center.dy - 75,
//             child: Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: const LinearGradient(
//                   colors: [Colors.blue, Colors.deepPurple],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 border: Border.all(color: Colors.white, width: 3),
//               ),
//               child: const Center(
//                 child: Text(
//                   'State Management',
//                   style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Circular modules
//           // ...List.generate(database.length, (index) {
//           //   final angle = (2 * pi / database.length) * index;
//           //   final dx = center.dx + radius * cos(angle) - 30;
//           //   final dy = center.dy + radius * sin(angle) - 30;

//           //   return Positioned(
//           //     left: dx,
//           //     top: dy,
//           //     child: Column(
//           //       children: [
//           //         //Icon(database[index].icon, color: Colors.white, size: 28),
//           //         const SizedBox(height: 4),
//           //         Text(
//           //           database[index].name,
//           //           style: const TextStyle(color: Colors.white, fontSize: 12),
//           //         ),
//           //       ],
//           //     ),
//           //   );
//           // }),
//           ...List.generate(database.length, (index) {
//             final angle = (2 * pi / database.length) * index;

//             // Only draw on the right-hand side (angle between -π/2 to π/2)
//             if (cos(angle) <= 0)
//               return const SizedBox.shrink(); // skip left side

//             final dx = center.dx + radius * cos(angle) - 30;
//             final dy = center.dy + radius * sin(angle) - 30;

//             return Positioned(
//               left: dx,
//               top: dy,
//               child: Column(
//                 children: [
//                   // Icon(database[index].icon, color: Colors.white, size: 28),
//                   const SizedBox(height: 4),
//                   Text(
//                     database[index].name,
//                     style: const TextStyle(color: Colors.white, fontSize: 12),
//                   ),
//                 ],
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// class ErpModule {
//   final String title;
//   final IconData icon;

//   const ErpModule(this.title, this.icon);
// }

// class LinePainter extends CustomPainter {
//   final Offset center;
//   final double radius;
//   final int count;

//   LinePainter({
//     required this.center,
//     required this.radius,
//     required this.count,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint =
//         Paint()
//           ..color = Colors.white54
//           ..strokeWidth = 1.5;

//     for (int i = 0; i < count; i++) {
//       final angle = (2 * pi / count) * i;
//       final x = center.dx + radius * cos(angle);
//       final y = center.dy + radius * sin(angle);
//       canvas.drawLine(center, Offset(x, y), paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
