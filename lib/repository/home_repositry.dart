import 'package:api_assignment/data/network/BaseApiServces.dart';
import 'package:api_assignment/data/network/NetworkApiServices.dart';
import 'package:api_assignment/res/app_url.dart';

import '../model/listings_data_entity.dart';

class HomeRepositry {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<ListingsDataEntity> fetchData() async {
    try {
      dynamic resposne =
          await _apiServices.getGetApiResponse(AppUrl.getListApiEndPoint);
      return resposne = ListingsDataEntity.fromJson(resposne);
    } catch (e) {
      throw e;
    }
  }
}
