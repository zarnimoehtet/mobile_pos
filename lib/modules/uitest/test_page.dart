// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class MyTestPage extends StatefulWidget {
//   static const String route = "/test";
//   const MyTestPage({Key? key}) : super(key: key);

//   @override
//   State<MyTestPage> createState() => _MyTestPageState();
// }

// class _MyTestPageState extends State<MyTestPage> {
//   late bool isShowingMainData;

//   @override
//   void initState() {
//     super.initState();
//     isShowingMainData = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: AspectRatio(
//         aspectRatio: 1.23,
//         child: DecoratedBox(
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(18)),
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xff2c274c),
//                 Color(0xff46426c),
//               ],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//           child: Stack(
//             children: <Widget>[
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   const SizedBox(
//                     height: 37,
//                   ),
//                   const Text(
//                     'Unfold Shop 2018',
//                     style: TextStyle(
//                       color: Color(0xff827daa),
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 4,
//                   ),
//                   const Text(
//                     'Monthly Sales',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 2,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 37,
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 16, left: 6),
//                       child: _LineChart(isShowingMainData: isShowingMainData),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.refresh,
//                   color:
//                       Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     isShowingMainData = !isShowingMainData;
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

