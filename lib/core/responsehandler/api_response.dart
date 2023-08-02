import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/responsehandler/status.dart';

class ApiResponse<T> {
  MainFailure? failure;
  T? data;
  ApiStatus? status;
  ApiResponse(this.failure, this.data, this.status);
  ApiResponse.loading() : status = ApiStatus.loading;
  ApiResponse.complete(this.data) : status = ApiStatus.complete;
  ApiResponse.error(this.failure) : status = ApiStatus.error;
  ApiResponse.initial() : status = ApiStatus.initial;
}
