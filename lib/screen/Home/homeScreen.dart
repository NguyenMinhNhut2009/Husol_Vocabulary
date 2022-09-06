// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vocabulary/constants.dart';
import 'package:vocabulary/network/api.dart';
import 'package:vocabulary/screen/Home/add_Topic.dart';
import 'package:vocabulary/service/home/home_Service.dart';

import '../../modules/home/home_Modules.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late HomeService _homeService;
  // List<Data>? data2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeService = HomeService();
  }

  @override
  Widget build(BuildContext context) {
    ApiProvider _provider = ApiProvider();
    Future<Home> fetchHomeById() async {
      final response = await _provider.get("v1/topics?is_shared=0");
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        print(response);
        return Home.fromJson(data);
      } else {
        throw Exception('Failed to load post');
      }
    }

    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F4),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Row(
              children: const [
                Text(
                  "Hello, ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Thao",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            )),
            Image.asset("assets/images/avatar.png"),
          ]),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 24, top: 16, right: 24, bottom: 16),
          child: _buildSearch(),
        ),
        Container(
          child: TabBar(
            controller: _tabController,
            labelColor: Color(0xFF1010101),
            unselectedLabelColor: Color(0xFFFFFFFF),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xFF1A1B2F),
            tabs: [
              Text(
                "My topic",
                style: TextStyle(
                    // color: Color(0xFf162447),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text("Share topic",
                  style: TextStyle(
                      // color: Color(0xFf162447),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: FutureBuilder<Home>(
                      future: fetchHomeById(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: snapshot.data?.result?.data?.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Image.network(
                                        snapshot.data?.result?.data?[index]
                                                .cover
                                                .toString() ??
                                            '',
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        snapshot.data?.result?.data?[index]
                                                .title
                                                .toString() ??
                                            '',
                                      ),
                                    ),

                                    // Text(snapshot.),
                                  ],
                                );
                              });
                        } else {
                          return Text("Loading");
                        }

                        // if (snapshot.connectionState ==
                        //     ConnectionState.waiting) {
                        //   return Text('Lodaing');
                        // } else {
                        //   return ListView.builder(
                        //       itemCount:
                        //           snapshot.data?.result?.data?.length ?? 0,
                        //       itemBuilder: (BuildContext context, int index) {
                        //         return Card(
                        //           child: Column(children: [
                        //             Text(
                        //               snapshot.data?.result?.data?[index].title
                        //                       .toString() ??
                        //                   ' ',
                        //             ),
                        //             // print(data.toString());
                        //           ]),
                        //         );
                        //       });
                        //   //   // return snapshot.data?.result?.data;
                        // }
                      },
                    ),
                  ),
                ],
              ),
            )),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //         context: context,
      //         builder: (BuildContext context) {
      //           return AlertDialog(
      //             scrollable: true,
      //             title: Text('Add Topic'),
      //             content: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Form(
      //                 child: Column(
      //                   children: <Widget>[
      //                     TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Name topic',
      //                         // icon: Icon(Icons.account_box),
      //                       ),
      //                     ),
      //                     // TextFormField(
      //                     //   decoration: InputDecoration(
      //                     //     labelText: 'Email',
      //                     //     icon: Icon(Icons.email),
      //                     //   ),
      //                     // ),
      //                     // TextFormField(
      //                     //   decoration: InputDecoration(
      //                     //     labelText: 'Message',
      //                     //     icon: Icon(Icons.message),
      //                     //   ),
      //                     // ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             actions: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   RaisedButton(
      //                       child: Text("Save"),
      //                       onPressed: () {
      //                         // your code
      //                       }),
      //                   RaisedButton(
      //                       child: Text("No"),
      //                       onPressed: () {
      //                         // your code
      //                       })
      //                 ],
      //               ),
      //             ],
      //           );
      //         });
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Color(0xff95A3B3),
      // ),
    );
  }
}

Widget _buildSearch() {
  return Container(
    width: 380,
    height: 121,
    decoration: const BoxDecoration(
        color: Color(0xFF1F4068),
        borderRadius: BorderRadius.all(Radius.circular(25.0))),
    child: Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 24, right: 20),
        child: Text(
          "What topic do you want to learn today?",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFFF3F3F4)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 17),
        child: Container(
          width: 306,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFFFFFFF).withOpacity(0.4),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search),
                ),
                const Text(
                  "Search topics",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB8B9BA)),
                ),
                const Icon(
                  Icons.close,
                  color: Color(0xFFD7D9DB),
                ),
              ],
            ),
          ),
        ),
      )
    ]),
  );
}

// class _RappiTabWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Card(
//       // elevation: ,
//       child: Text(
//         'All topics',
//         style: TextStyle(
//           color: Color(0xFF1A1B2F),
//           fontWeight: FontWeight.w700,
//           fontSize: 20,
//         ),
//       ),
//     );
//   }
// }
// Future _showAlert(BuildContext context) {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         actions: [
//           FlatButton(
//             child: Text('yes'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           FlatButton(
//             child: Text('No'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
