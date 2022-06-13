import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 17, left: 400),
      ),
      Image.asset("assets/images/logo2.png"),
      Padding(
        padding: EdgeInsets.only(top: 101),
        child: _buildConten(context),
      )
    ]),
  );
}

Widget _buildConten(BuildContext context) {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  return Container(
    width: 425,
    height: 550,
    decoration: const BoxDecoration(
        color: Color(0xFFECEFF1),
        borderRadius: BorderRadius.all(Radius.circular(25.0))),
    child: GestureDetector(
      child: Container(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 255, top: 35),
            child: Text(
              "Log in",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 289, top: 10),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Your email',
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFfA0A2A3)),
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 260, top: 10),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
            child: TextField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Password',
                suffix: Icon(
                  Icons.visibility,
                  color: Colors.red,
                ),
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFfA0A2A3)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 255),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'Forget Password?',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF546E7A)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, top: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1B2F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                    child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF)),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 81, right: 81, top: 20),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Row(
                children: [
                  const Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const RegisterPage()));
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        ],
      )),
    ),
  );
}
