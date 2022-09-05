// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HomeTopic extends StatefulWidget {
//   const HomeTopic({Key? key}) : super(key: key);

//   @override
//   State<HomeTopic> createState() => _HomeTopicState();
// }

// class _HomeTopicState extends State<HomeTopic> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           SizedBox(
//             height: 15.0,
//           ),
//           Container(
//             padding: EdgeInsets.only(right: 16.0),
//             width: MediaQuery.of(context).size.width - 30.0,
//             height: MediaQuery.of(context).size.width - 50.0,
//             child: GridView.count(
//               crossAxisCount: 2,
//               primary: false,
//               crossAxisSpacing: 18.0,
//               mainAxisSpacing: 15.0,
//               childAspectRatio: 0.8,
//               children: <Widget>[
//                 _buildCard('Home life', 'assets/topic/homelife.png'),
//                 _buildCard('Holidays', 'assets/topic/holiday.png'),
//                 _buildCard(
//                     'Shopping Online', 'assets/topic/shoppingOnline.png'),
//                 _buildCard('University', 'assets/topic/university.png'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCard(String name, String imgPath) {
//     return Padding(
//       padding: EdgeInsets.only(top: 15.0, right: 5.0, left: 5.0, bottom: 5.0),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15.0),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.withOpacity(0.2),
//                   spreadRadius: 3.0,
//                   blurRadius: 5.0),
//             ],
//             color: Colors.red,
//           ),
//         ),
//       ),
//     );
//   }
// }
