import 'package:api_assignment/data/response/api_response.dart';
import 'package:api_assignment/repository/home_repositry.dart';
import 'package:flutter/cupertino.dart';

import '../model/listings_data_entity.dart';

class HomeViewModel with ChangeNotifier {



  final _myrepo = HomeRepositry();
  ApiResponse<ListingsDataEntity> listdata = ApiResponse.LOADING();

  Future<void> fetchListData() async {
    setDataList(ApiResponse<ListingsDataEntity> response) {
      listdata = response;
      notifyListeners();
    }

    _myrepo.fetchData().then((value) => {
      setDataList(ApiResponse.COMPLETED(value))

    }).onError((error, stackTrace) =>{

      setDataList(ApiResponse.ERROR(error.toString()))});



  }
}
