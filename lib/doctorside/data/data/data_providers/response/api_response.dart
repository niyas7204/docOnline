import 'package:doc_online/doctorside/data/data/data_providers/response/status.dart';

class ApiResponse<T> {
  String? message;
  T? data;
  Status? status;
  ApiResponse(this.message, this.data, this.status);
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.complete(this.data) : status = Status.complete;
  ApiResponse.error(this.message) : status = Status.error;
}
