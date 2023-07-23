

import 'package:api_assignment/data/response/status.dart';

class ApiResponse<T>
{
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

      ApiResponse.LOADING() :status=Status.LOADING;

  ApiResponse.COMPLETED():status=Status.COMPLETED;

  ApiResponse.ERROR():status=Status.ERROR;



}