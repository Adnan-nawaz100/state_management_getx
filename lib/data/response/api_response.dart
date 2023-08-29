import 'package:state_management_getx/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data; //Genaric data
  String? message;

  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.COMPLETED(this.data) : status = Status.COMPLETED;
  ApiResponse.ERROR(this.message) : status = Status.ERROR;

  @override
  String toString() {
    // TODO: implement toString
    return "Status : $status\n Message: $message\n Data: $data";
  }
}
