import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'package:flutter_laravel/models/user.dart';
import 'package:flutter_laravel/services/dio.dart';

class Auth extends ChangeNotifier {
  bool _isLoggedIn = false;
  User _user;
  String _token;

  bool get authenticated => _isLoggedIn;
  User get user => _user;

  void login({Map creds}) async {
    print(creds);

    try {
      Dio.Response response = await dio().post('/sanctum/token', data: creds);
      print(response.data.toString());

      String token = response.data.toString();
      this.tryToken(token: token);

    } catch (e) {
      print(e);
    }
  }

  void tryToken({String token}) async {
    if (token == null) {
      return;
    } else {
      try {
        Dio.Response response = await dio().get('/user',
            options: Dio.Options(headers: {'Authorization': 'Bearer $token'}));
        this._isLoggedIn = true;
        this._user = User.fromJson(response.data);
        notifyListeners();
        print(_user);
      } catch (e) {
        print(e);
      }
    }
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
