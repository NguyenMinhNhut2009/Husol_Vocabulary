import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vocabulary/screen/Login/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer setTime() {
    var _duration = const Duration(seconds: 2);
    return new Timer(_duration, navigatorPage);
  }

  Future navigatorPage() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA6DAE4),
      body: Padding(
        padding: const EdgeInsets.only(left: 128, top: 226),
        child: Image.asset("assets/images/VocabularyLogo.png"),
      ),
    );
  }
}
