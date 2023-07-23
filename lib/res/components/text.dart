import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? title;
  Color? color;
  double size;

  TextWidget(this.title, this.color, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: TextStyle(fontSize: size, color: color),
    );
  }
}



class MainTitleText extends StatelessWidget {
  const MainTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

        children: [
          TextSpan(

            text: 'SONY\n',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.white,
              decoration: TextDecoration.underline, // Add underline decoration
              decorationColor: Colors.white, // Underline color
              decorationThickness: 1.0, // Underline thickness
              background: Paint()..color = Colors.blueGrey.shade800, // Add background color
            ),
          ),
          const TextSpan(
            text: 'Phones',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

  }
}

