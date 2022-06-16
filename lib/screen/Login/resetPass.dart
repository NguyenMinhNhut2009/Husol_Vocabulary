import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  return Container(
    child: Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 17, left: 100),
        child: Image.asset("assets/images/logo.png"),
      ),
    ]),
  );
}
