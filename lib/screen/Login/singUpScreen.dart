import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vocabulary/screen/Login/fogetPassWordScreen.dart';
import 'package:vocabulary/screen/Login/loginScreen.dart';

class SinUpScreen extends StatefulWidget {
  const SinUpScreen({Key? key}) : super(key: key);

  @override
  State<SinUpScreen> createState() => _SinUpScreenState();
}

class _SinUpScreenState extends State<SinUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(children: [
      Image.asset("assets/images/logo.png"),
      Padding(
        padding: EdgeInsets.only(top: 101),
        child: _buildContent(context),
      )
    ]),
  );
}

Widget _buildContent(BuildContext context) {
  bool _showPassword = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  return Container(
    width: 425,
    height: 550,
    decoration: const BoxDecoration(
        color: Color(0xFFECEFF1),
        borderRadius: BorderRadius.all(Radius.circular(25.0))),
    child: Container(
      child: Column(children: [
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(top: 33, right: 250),
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1B2F)),
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(top: 7, right: 289),
            child: Text(
              "Name",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1B2F)),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  // borderRadius: BorderRadius.vertical()
                ),
                hintText: 'Your name',
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFfA0A2A3)),
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(top: 7, right: 289),
            child: Text(
              "Email ",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1B2F)),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
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
          flex: 3,
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(top: 7, right: 289),
            child: Text(
              "Phone",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1B2F)),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
            child: TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  // borderRadius: BorderRadius.vertical()
                ),
                hintText: 'Your number phone',
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFfA0A2A3)),
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(top: 7, right: 265),
            child: Text(
              "Password",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1B2F)),
            ),
          ),
          flex: 1,
        ),
        Container(
          height: 60,
          padding: EdgeInsets.only(left: 45, right: 30, top: 7),
          child: TextFormField(
            controller: passWordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
                // borderRadius: BorderRadius.vertical()
              ),
              hintText: 'Your password',
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  });
                },
                child: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFfA0A2A3)),
              // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 48, right: 48, top: 31),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgetPassWordScreen()));
              },
              child: Container(
                width: 279,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1B2F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                    child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                )),
              ),
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: const Text(
              "Back to log in",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF607D8B)),
            ),
          ),
          flex: 1,
        ),
      ]),
    ),
  );
}

void setState(Null Function() param0) {}
