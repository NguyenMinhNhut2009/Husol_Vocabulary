class Login {
  Null? html;
  Null? message;
  Result? result;
  String? status;

  Login({this.html, this.message, this.result, this.status});

  Login.fromJson(Map<String, dynamic> json) {
    html = json['html'];
    message = json['message'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['html'] = this.html;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Result {
  String? token;
  Info? info;

  Result({this.token, this.info});

  Result.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}

class Info {
  int? id;
  String? email;
  String? mobile;
  String? ggId;
  String? fbId;
  String? appleId;
  String? fullName;
  String? nickname;
  String? avatar;
  String? token;
  int? role;
  int? status;
  String? lastLogin;

  Info(
      {this.id,
      this.email,
      this.mobile,
      this.ggId,
      this.fbId,
      this.appleId,
      this.fullName,
      this.nickname,
      this.avatar,
      this.token,
      this.role,
      this.status,
      this.lastLogin});

  Info.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    mobile = json['mobile'];
    ggId = json['gg_id'];
    fbId = json['fb_id'];
    appleId = json['apple_id'];
    fullName = json['full_name'];
    nickname = json['nickname'];
    avatar = json['avatar'];
    token = json['token'];
    role = json['role'];
    status = json['status'];
    lastLogin = json['last_login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['gg_id'] = this.ggId;
    data['fb_id'] = this.fbId;
    data['apple_id'] = this.appleId;
    data['full_name'] = this.fullName;
    data['nickname'] = this.nickname;
    data['avatar'] = this.avatar;
    data['token'] = this.token;
    data['role'] = this.role;
    data['status'] = this.status;
    data['last_login'] = this.lastLogin;
    return data;
  }
}
