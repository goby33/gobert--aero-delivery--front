abstract class ApiResponse<T> {
  String apiStatus;
  T? data;
  String? failure;

  ApiResponse({required this.apiStatus, this.data, this.failure});
}

class SuccessResponse<T> extends ApiResponse<T> {
  SuccessResponse(String apiStatus, T data)
      : super(apiStatus: apiStatus, data: data);
}

class FailResponse<T> extends ApiResponse<T> {
  FailResponse(String apiStatus, {String? failure})
      : super(apiStatus: apiStatus, failure: failure);
}
