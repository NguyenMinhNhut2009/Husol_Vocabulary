import 'package:flutter/material.dart';
import 'package:vocabulary/screen/Login/loginScreen.dart';
import 'package:vocabulary/screen/Login/resetPass.dart';
import 'package:vocabulary/screen/Login/singUpScreen.dart';
import 'package:vocabulary/screen/Login/verityCode.dart';
import 'package:vocabulary/screen/Onboarding/onBoarding.dart';
import 'package:vocabulary/screen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResetPassWordScreen(),
    );
  }
}
