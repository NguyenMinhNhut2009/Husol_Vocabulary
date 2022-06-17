import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'loginScreen.dart';

class ResetPassWordScreen extends StatefulWidget {
  const ResetPassWordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPassWordScreen> createState() => _ResetPassWordScreenState();
}

class _ResetPassWordScreenState extends State<ResetPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  TextEditingController passwordController = new TextEditingController();
  return Container(
    child: Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 17),
        child: Image.asset("assets/images/logo.png"),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 100, right: 170),
        child: Text(
          "Forget Password",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1B2F)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 16, right: 140),
        child: Text(
          "Please enter a new password",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF162447)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21, right: 230),
        child: Text(
          "New password",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF162447)),
        ),
      ),
      Container(
        height: 60,
        padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: '********',
            suffix: Icon(
              Icons.visibility,
              color: Color(0xFF666869),
            ),
            hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFfA0A2A3)),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21, right: 190),
        child: Text(
          "Confirm new passwordd",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF162447)),
        ),
      ),
      Container(
        height: 60,
        padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: '********',
            suffix: Icon(
              Icons.visibility,
              color: Color(0xFF666869),
            ),
            hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFfA0A2A3)),
          ),
        ),
      ),
      // Expanded(child: SizedBox()),
      Padding(
        padding: EdgeInsets.only(left: 48, right: 48, top: 65, bottom: 35),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Container(
            width: 320,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF1A1B2F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
                child: Text(
              "Save",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF),
                  letterSpacing: 0.15),
            )),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: const Text(
          "Back to log in",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    ]),
  );
}
