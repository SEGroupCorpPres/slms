// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Body extends StatefulWidget {
//   Body({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _BodyState createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   DateTime _dateTime = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               child: CustomCreditCard(
//                 cardNumber: "5500000000000004",
//                 cardHolder: "LyhourChhen",
//                 year: _dateTime.year,
//                 month: _dateTime.month,
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               child: CustomCreditCard(
//                 cardNumber: "34111111111111111",
//                 cardHolder: "LyhourChhen",
//                 year: _dateTime.year,
//                 month: _dateTime.month,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
