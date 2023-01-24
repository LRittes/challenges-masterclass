import 'package:dio/dio.dart';

class ServiceHTTPClient {
  final Dio _dio = Dio();
  Future<List> getAll() async {
    var resp = await _dio.get("http://localhost:3031/tasks");
    return resp.data;
  }
}
