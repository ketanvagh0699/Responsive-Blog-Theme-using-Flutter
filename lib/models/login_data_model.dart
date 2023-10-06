class LoginDataModel {
  int? status;
  String? message;
  LoginData? data;

  LoginDataModel({this.status, this.message, this.data});

  LoginDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new LoginData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class LoginData {
  List<LoginFoundUsers>? loginFoundUsers;

  LoginData({this.loginFoundUsers});

  LoginData.fromJson(Map<String, dynamic> json) {
    if (json['loginFoundUsers'] != null) {
      loginFoundUsers = <LoginFoundUsers>[];
      json['loginFoundUsers'].forEach((v) {
        loginFoundUsers!.add(new LoginFoundUsers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.loginFoundUsers != null) {
      data['loginFoundUsers'] =
          this.loginFoundUsers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LoginFoundUsers {
  String? name;
  String? token;

  LoginFoundUsers({this.name, this.token});

  LoginFoundUsers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['token'] = this.token;
    return data;
  }
}
