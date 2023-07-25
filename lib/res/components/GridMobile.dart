import 'package:flutter/material.dart';


class MobileGrid extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

   MobileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0, // Spacing between columns
        mainAxisSpacing: 10.0, // Spacing between rows
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blueGrey[100 * (index % 9 + 1)], // Sample color for each item
          child: Center(
            child: Text(
              items[index],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}