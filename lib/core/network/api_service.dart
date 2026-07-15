import 'package:dio/dio.dart';
import 'package:food_order_app/core/network/api_exceptions.dart';
import 'package:food_order_app/core/network/dio_client.dart';

class ApiService {
  final DioClient _dioClient = DioClient();

  Future<dynamic> get(String endPoint) async {
    try {
      final response = await _dioClient.dio.get(endPoint);
      return response.data;
    } on DioError catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> post(String endPoint, Map<String, dynamic> data) async {
    try {
      final response = await _dioClient.dio.post(endPoint, data: data);
      return response.data;
    } on DioError catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> put(String endPoint, Map<String, dynamic> data) async {
    try {
      final response = await _dioClient.dio.put(endPoint, data: data);
      return response.data;
    } on DioError catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> delete(String endPoint, Map<String, dynamic> data) async {
    try {
      final response = await _dioClient.dio.delete(endPoint, data: data);
      return response.data;
    } on DioError catch (e) {
      return ApiExceptions.handleError(e);
    }
  }
}
