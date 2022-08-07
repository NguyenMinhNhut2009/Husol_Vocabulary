import 'package:http/http.dart';
import 'package:vocabulary/modules/login/login_modules.dart';

import '../../network/api.dart';

class GoogleService {
  ApiProvider _provider = ApiProvider();
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<dynamic> signInction(String token) async {
    Map<String, dynamic> mapToken = {'token_id': token};

    final response = await _provider.post("v1/connectsocial", mapToken);
    return Login.fromJson(response);
  }
}
