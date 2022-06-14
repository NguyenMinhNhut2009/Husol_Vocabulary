import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vocabulary/screen/Login/loginScreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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
      Padding(
        padding: EdgeInsets.only(left: 12, right: 12, top: 142),
        child: Image.asset("assets/images/onboarding.png"),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 36, top: 16, right: 177),
        child: Text(
          "Learn English easy and simple ",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xFF000000)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 36, right: 61, top: 15),
        child: Text(
          "Get update about useful and interesting English tips to improve your studying",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff607D8B)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 74, right: 74, top: 116),
        child: GestureDetector(
          onTap: () {
            // Navigator.pushAndRemoveUntil(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const LoginPage(),
            //     ),
            //     (route) => false);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
                child: Text(
              'Get Started'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white, fontSize: 14),
            )),
          ),
        ),
      ),
    ]),
  );
}
