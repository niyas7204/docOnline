import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/doctorside/data/data_providers/response/status.dart';

class ApiResponse<T> {
  MainFailure? failure;
  T? data;
  Status? status;
  ApiResponse(this.failure, this.data, this.status);
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.complete(this.data) : status = Status.complete;
  ApiResponse.error(this.failure) : status = Status.error;
}
