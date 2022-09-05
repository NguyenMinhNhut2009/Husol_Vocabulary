// ignore: avoid_web_libraries_in_flutter

class Home {
  String? html;
  String? message;
  Result? result;
  String? status;

  Home({this.html, this.message, this.result, this.status});

  // Home.fromJson(Map<String, dynamic> json) {
  //   html = json['html'];
  //   message = json['message'];
  //   result =
  //       json['result'] != null ? new Result.fromJson(json['result']) : null;
  //   status = json['status'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['html'] = this.html;
  //   data['message'] = this.message;
  //   if (this.result != null) {
  //     data['result'] = this.result?.toJson();
  //   }
  //   data['status'] = this.status;
  //   return data;
  // }
  factory Home.fromJson(Map<String, dynamic> json) => Home(
        result: Result.fromJson(json['result']),
        html: json['html'],
        message: json['message'],
        status: json['status'],
      );
  Map<String, dynamic> toJson() => {
        "result": result!.toJson(),
        "html": html,
        "message": message,
        "status": status,
      };
}

class Result {
  List<Data>? data;
  int? page;
  int? limit;
  int? total;

  Result({this.data, this.page, this.limit, this.total});

  // Result.fromJson(Map<String, dynamic> json) {
  //   if (json['data'] != null) {
  //     data = <Data>[];
  //     json['data'].forEach((v) {
  //       data?.add(new Data.fromJson(v));
  //     });
  //   }
  //   page = json['page'];
  //   limit = json['limit'];
  //   total = json['total'];

  //   print(json['data'].length);
  // }

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "page": page,
        "limt": limit,
        "total": total,
      };

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        data: List<Data>.from(json['data'].map((x) => Data.fromJson(x))),
        page: json['page'],
        limit: json['limit'],
        total: json['total'],
      );
}

class Data {
  int? id;
  int? authorId;
  String? title;
  String? cover;
  bool? isShared;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.authorId,
      this.title,
      this.cover,
      this.isShared,
      this.createdAt,
      this.updatedAt});

  // Data.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   authorId = json['author_id'];
  //   title = json['title'] ? null : json['title'];
  //   cover = json['cover'] ? null : json['cover'];
  //   isShared = json['is_shared'];
  //   createdAt = json['created_at'];
  //   updatedAt = json['updated_at'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['author_id'] = this.authorId;
  //   data['title'] = this.title;
  //   data['cover'] = this.cover;
  //   data['is_shared'] = this.isShared;
  //   data['created_at'] = this.createdAt;
  //   data['updated_at'] = this.updatedAt;
  //   return data;
  // }
  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'],
        authorId: json['authorId'],
        title: json['title'],
        cover: json['cover'],
        isShared: json['isShared'],
        createdAt: json['createdAt'],
        updatedAt: json['updateAt'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "authorId": authorId,
        "title": title,
        "cover": cover,
        "isShared": isShared,
        "createdAt": createdAt,
        "updateAt": updatedAt,
      };
}
