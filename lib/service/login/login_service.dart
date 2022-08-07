
import 'package:vocabulary/modules/login/login_modules.dart';
import 'package:vocabulary/network/api.dart';

class AuthService {
  ApiProvider _provider = ApiProvider();
  Future<dynamic> signInAction(Map<String, dynamic> params) async {
    final response = await _provider.post("v1/auth/login", params);
    return Login.fromJson(response);
  }
}
