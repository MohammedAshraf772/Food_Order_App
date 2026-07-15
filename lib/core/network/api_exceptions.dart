import 'package:dio/dio.dart';
import 'package:food_order_app/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(massege: "Bad connection");
      case DioErrorType.badResponse:
        return ApiError(massege: error.toString());
      default:
        return ApiError(massege: "someThing went wrong");
    }
  }
}
