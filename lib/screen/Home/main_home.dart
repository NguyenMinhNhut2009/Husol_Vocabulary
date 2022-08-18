import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vocabulary/screen/Account/Account.dart';
import 'package:vocabulary/screen/Chat/chatScreen.dart';
import 'package:vocabulary/screen/Home/homeScreen.dart';
import 'package:vocabulary/screen/Notification/notificationScreen.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin {
  List<TabMenuItem> itemList = [
    TabMenuItem(
      index: 0,
      icon: 'assets/icons/Home.svg',
      iconHover: 'assets/icons/Home2.svg',
      text: 'Home',
    ),
    TabMenuItem(
      index: 1,
      icon: 'assets/icons/chart.svg',
      iconHover: 'assets/icons/chart2.svg',
      text: 'Chart',
    ),
    TabMenuItem(
      index: 2,
      icon: 'assets/icons/Notification.svg',
      iconHover: 'assets/icons/Notification2.svg',
      text: 'Notification',
    ),
    TabMenuItem(
      index: 3,
      icon: 'assets/icons/Account.svg',
      iconHover: 'assets/icons/Account2.svg',
      text: 'ACoount',
    ),
  ];
  final GlobalKey _keyBottomTabbarey = GlobalKey();
  int _selectedIndex = 0;
  late TabMenuItem _menuItem;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  late BottomNavigationBar bottomNavigationBar;
  Size bottomTabbarHeight = Size.zero;

  @override
  void initState() {
    _menuItem = itemList[0];
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bottomNavigator();
    return Scaffold(
        body: SafeArea(
            child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HomeScreen(),
            ChatScreen(),
            NotificationScreen(),
            AccountScreen(),
          ],
        )),
        bottomNavigationBar: bottomNavigationBar);
  }

  void bottomNavigator() {
    bottomNavigationBar = BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        currentIndex: _selectedIndex,
        items: itemList.map((data) {
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
                data.index == _selectedIndex ? data.iconHover : data.icon),
            label: data.text,
          );
        }).toList());
  }
}

class TabMenuItem {
  int index;
  String icon;
  String iconHover;
  String text;
  TabMenuItem({
    required this.index,
    required this.icon,
    required this.iconHover,
    required this.text,
  });
}
