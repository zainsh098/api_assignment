import 'dart:convert';
import 'dart:io';
import 'package:api_assignment/data/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:api_assignment/data/network/BaseApiServces.dart';
import 'package:http/http.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 15));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FethDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response =
          await post(Uri.parse(url), body: data).timeout(Duration(seconds: 15));

      response = returnResponse(response);
    } on SocketException {
      throw FethDataException("No Internet Connection");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      default:
        throw FethDataException(
            "Error occur While Communicating with server + with status code " +
                response.statusCode.toString());
    }
  }
}
