class ApiError {
  final String massege;
  final int? statuscode;
  ApiError({required this.massege, this.statuscode});
  @override
  String toString() {
    return "error is: $massege(statuscode is $statuscode)";
  }
}
