import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData? icon;
  VoidCallback onPress;
   double size;
   Color? color;

  IconWidget({Key? key, required this.onPress, required this.icon,required this.color, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Icon(icon,size: size,color: color,),
    );
  }
}
