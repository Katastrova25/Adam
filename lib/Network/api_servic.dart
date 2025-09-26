import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<Map<String, dynamic>> get(String url) async {
    var response = await dio.get(url);
    return response.data;
  }
}
