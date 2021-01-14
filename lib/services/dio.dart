import 'package:dio/dio.dart';

Dio dio() {
  Dio dio = new Dio();

  //ios
  //dio.options.baseUrl = "http://localhost:8000/api";
  //android
  dio.options.baseUrl = "http://10.0.2.2:8000/api";

  dio.options.headers['accept'] = 'Application/Json';
  

  return dio;
}
