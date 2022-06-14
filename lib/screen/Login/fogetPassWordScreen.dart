import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vocabulary/screen/Login/verityCode.dart';

import 'loginScreen.dart';

class ForgetPassWordScreen extends StatefulWidget {
  const ForgetPassWordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassWordScreen> createState() => _ForgetPassWordScreenState();
}

class _ForgetPassWordScreenState extends State<ForgetPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  TextEditingController emailController = new TextEditingController();
  return SingleChildScrollView(
    child: Column(children: [
      const Padding(
        padding: EdgeInsets.only(
          top: 17,
          left: 400,
        ),
      ),
      Image.asset("assets/images/logo.png"),
      Padding(
        padding: EdgeInsets.only(
          right: 189,
          top: 113,
        ),
        child: Text(
          "Forget Password",
          style: TextStyle(
              color: Color(0xff1A1B2F),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 42,
          right: 150,
          top: 16,
        ),
        child: Text(
          "Enter the email adress associated with your account.",
          style: TextStyle(
              color: Color(0xff162447),
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
      ),
      Container(
        height: 60,
        padding: const EdgeInsets.only(left: 45, right: 30, top: 16),
        child: TextField(
          controller: emailController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent),
              // borderRadius: BorderRadius.vertical()
            ),
            hintText: 'Your email',
            hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFfA0A2A3)),
            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 48, right: 48, top: 65),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VerityScreen()));
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
              "Send code",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            )),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 35),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: const Text(
          "Back to log in",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF607D8B)),
        ),
      ),
    ]),
  );
}
