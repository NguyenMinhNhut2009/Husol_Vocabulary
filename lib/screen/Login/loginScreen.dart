import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vocabulary/bloc/login_bloc.dart';
import 'package:vocabulary/screen/Home/homeScreen.dart';
import 'package:vocabulary/screen/Home/main_home.dart';
import 'package:vocabulary/screen/Login/fogetPassWordScreen.dart';
import 'package:vocabulary/screen/Login/singUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthBloc _bloc;
  bool _showPassword = true;
  bool _isVaild = false;
  bool _isEmailValid = false;
  bool _isPassValid = false;
  late String _email;
  late String _password;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  @override
  void initState() {
    _bloc = new AuthBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }

  void _checkEmailPassword() {
    setState(() {
      _isVaild = _isEmailValid && _isPassValid;
    });
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        // const Expanded(child: SizedBox()),
        Padding(padding: EdgeInsets.only(top: 90)),
        Image.asset("assets/images/logo.png"),
        Padding(
          padding: EdgeInsets.only(top: 45),
          child: Container(
            width: 425,
            height: 550,
            decoration: const BoxDecoration(
                color: Color(0xFFECEFF1),
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            child: GestureDetector(
              child: Container(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 255, top: 35),
                    child: Text(
                      "Log in",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 289, top: 10),
                    child: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
                    child: TextField(
                      // obscureText: true,
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your email',
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFfA0A2A3)),
                      ),
                      onChanged: (text) {
                        setState(() {
                          _email = text;
                          _isEmailValid = !_email.isEmpty;
                          _checkEmailPassword();
                        });
                      },
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 260, top: 10),
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.only(left: 45, right: 30, top: 7),
                    child: TextFormField(
                      controller: passController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        // labelText: '',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              });
                            },
                            child: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 20,
                              color: Colors.grey,
                            )),
                      ),
                      onChanged: (text) {
                        _password = text;
                        _isPassValid = !_password.isEmpty;
                        _checkEmailPassword();
                      },
                      obscureText: _showPassword,
                      keyboardType: TextInputType.text,
                    ),
                  ), // txtPassword(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 255),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassWordScreen()));
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF546E7A)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      var params = Map<String, dynamic>();
                      params["email"] = emailController.value.text;
                      params["password"] = passController.value.text;
                      _bloc.signInAction(params: params).then((data) {
                        print(data);
                        if (data.status != "success") {
                          return _showAlert(
                              context, "Login", data.message.toString());
                        } else {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainHome()));
                        }
                      });
                    },
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
                  // btnLogin(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 81, right: 81, top: 20),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SinUpScreen()));
                            },
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Center(
                        child: Text(
                      "---------- or ----------",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF607D8B)),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 170, right: 48),
                              child: Container(
                                  width: 24,
                                  height: 24,
                                  child: const Image(
                                    image:
                                        AssetImage('assets/images/gmail.png'),
                                    fit: BoxFit.contain,
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 48),
                              child: Container(
                                  width: 24,
                                  height: 24,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/instagram.png'),
                                    fit: BoxFit.contain,
                                  )),
                            ),
                          ),
                        ]),
                  ),
                ],
              )),
            ),
          ),
        ),
      ]),
    );
  }
}

Future _showAlert(BuildContext context, String title, String message) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
