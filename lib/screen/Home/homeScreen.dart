import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
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
            indicatorColor: Color(0xFFFFFFFF),
            tabs: List.generate(4, (index) => _RappiTabWidget()),
          ),
          // TabBarView(controller: _tabController,
          // ),
        ),
      ]),
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

class _RappiTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: Text(
        'All topics',
        style: TextStyle(
          color: Color(0xFF1A1B2F),
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }
}
