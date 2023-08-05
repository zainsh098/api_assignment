import 'package:api_assignment/data/response/status.dart';
import 'package:api_assignment/model/listings_data_entity.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.LOADING() : status = Status.LOADING;

  ApiResponse.COMPLETED(this.data) : status = Status.COMPLETED;

  ApiResponse.ERROR(this.message) : status = Status.ERROR;

  String toString() {
    return "Status :$message \n Message : $message \n Data : $data";
  }
}
