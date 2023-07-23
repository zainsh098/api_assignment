
import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {


   String? title;
   Color? color;
   var size;

   TextWidget(this.title, this.color, this.size);







  @override
  Widget build(BuildContext context) {
    return Text(title.toString(),style: TextStyle(
      fontSize: size,color: color

    ),);
  }
}
