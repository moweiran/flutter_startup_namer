import 'package:dio/dio.dart';

class LwHttp {
  var dio = Dio();

  Future<Response> post<T>(String url, T data) async {
    Response response;
    // response = dio.post(url, {data: data});
    return response;
  }

  Future<Response> get<T>(String url, T data) async {
    Response response;
    return response;
  }
}
