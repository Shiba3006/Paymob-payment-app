import 'package:dio/dio.dart';

class ApiService {
  ApiService({required Dio dio}) : _dio = dio;
  final Dio _dio;
  final String _baseUrl = 'https://accept.paymob.com/api';
  Future<Response> post({
    required String endpoint,
    required data,
  }) async {
    final response = await _dio.post('$_baseUrl$endpoint', data: data);
    return response;
  }
}
