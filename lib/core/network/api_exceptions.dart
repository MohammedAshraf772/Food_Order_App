import 'package:dio/dio.dart';
import 'package:food_order_app/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(
          massege: "Connection timeout,please check your internet connection",
        );
      case DioErrorType.sendTimeout:
        return ApiError(massege: "Request timeout.please try again");
      case DioErrorType.receiveTimeout:
        return ApiError(massege: "Request timeout.please try again");
      default:
        return ApiError(
          massege: "An unexpected error occurred, please try again",
        );
    }
  }
}
