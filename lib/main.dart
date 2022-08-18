import 'package:flutter/material.dart';
import 'package:vocabulary/screen/Chat/chatScreen.dart';
import 'package:vocabulary/screen/Home/homeScreen.dart';
import 'package:vocabulary/screen/Home/main_home.dart';
import 'package:vocabulary/screen/Login/fogetPassWordScreen.dart';
import 'package:vocabulary/screen/Login/loginScreen.dart';
import 'package:vocabulary/screen/Login/resetPass.dart';
import 'package:vocabulary/screen/splashScreen.dart';

import 'screen/Login/singUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainHome(),
    );
  }
}
