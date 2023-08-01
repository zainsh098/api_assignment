

import 'package:flutter/cupertino.dart';

import '../model/grid _item.dart';

class GridViewModel extends ChangeNotifier
{

  List<GridItem>_gridItems=[
    GridItem('title', 'price', 'ram', 'condition', 'location', 'date'),
    GridItem('title', 'price', 'ram', 'condition', 'location', 'date'),
    GridItem('title', 'price', 'ram', 'condition', 'location', 'date')



  ];


  List<GridItem> get gridItems=> _gridItems;







}