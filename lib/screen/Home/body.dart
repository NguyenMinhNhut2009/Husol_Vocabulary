import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vocabulary/bloc/home/Home_bloc.dart';
import 'package:vocabulary/constants.dart';
import 'package:vocabulary/modules/home/home_Modules.dart';
import 'package:vocabulary/screen/Home/topic.dart';
import 'package:vocabulary/bloc/home/Home_bloc.dart';
import 'package:vocabulary/service/home/home_Service.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
// HomeBloc? _homeBloc;
  late HomeService _homeService;
  List<Data>? _data;
  @override
  void initState() {
    // TODO: implement initState
    // _homeBloc = HomeBloc();
    _homeService = HomeService();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        _buildSearch(),
        Topic(),
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
                  // Expanded(child: FutureBuilder<Data>(builder: ,)
                  // )
                ],
              ),
            )),
      ],
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
