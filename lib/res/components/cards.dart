

import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/text.dart';
import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  double height;
  double width;
  String text;
   CardsView({super.key,required this.text,required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: height,
        width: width,
        child:Center(child: TextWidget(text, AppColors.blackText, 20)),



      ),


    );
  }
}
