import 'dart:async';

import 'package:vocabulary/modules/login_modules.dart';
import 'package:vocabulary/service/login_service.dart';

class AuthBloc {
  StreamController _emailController=StreamController<String>();
  StreamController _passController = StreamController<String>();
  AuthService ?_authService;

  Stream get emailStream => _emailController.stream;
  Stream get passwordStream => _passController.stream;

  AuthBloc() {
    _emailController = StreamController<String>();
    _passController = StreamController<String>();
    _authService = AuthService();
  }
  bool isValid(String email, String pass) {
    if (Validators.isVaildEmail(email)) {
      _emailController.sink.addError("Email không hợp lê");
      return false;
    }
    if (email.length == 0 || email == null) {
      _emailController.sink.addError("Vui lòng nhập Email");
      return false;
    }
    _emailController.sink.add("");

    if (Validators.isVaildPass(pass)) {
      _emailController.sink.addError("Mật khẩu phải trên 5 ký tự");
      return false;
    }
    if (email.length == 0 || email == null) {
      _emailController.sink.addError("Vui lòng nhập mật khẩu");
      return false;
    }
    _passController.sink.add("");
    return true;
  }

  Future<Login> signInAction({dynamic params}) {
    Completer<Login> c = Completer();
    var _signInResponse = Login();
    if (params == null) {
      // ignore: prefer_void_to_null
      _signInResponse.message = 'Vui lòng nhập email và Mật khẩu' as Null;
    }
    _authService!.signInAction(params).then((data) {
      if (data != null) {
        _signInResponse = data;
      }
      c.complete(_signInResponse);
    });
    return c.future;
  }

  void dispose() {
    _emailController.close();
    _passController.close();
  }
  // Future<void> saveAccessToken(String token) async {
  //   _authService.saveAccessToken(token);
  // }
}

class Validators {
  static bool isVaildEmail(String email) {
    return email.contains("@");
  }

  static bool isVaildPass(String pass) {
    // ignore: unnecessary_null_comparison
    return pass != null && pass.length >= 5;
  }
}
