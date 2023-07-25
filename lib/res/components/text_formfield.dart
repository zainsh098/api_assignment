

import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/icons.dart';
import 'package:flutter/material.dart';


class TextFormFieldSearchBar extends StatelessWidget {
  final TextEditingController _emailController=TextEditingController();
   TextFormFieldSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
        // You can also add other properties like border, boxShadow, etc.
      ),
      child: TextFormField(
        controller: _emailController,
        enabled: true,

        decoration: InputDecoration(
           labelText: 'Search with make and model',
          prefixIcon: IconWidget(
              onPress: () {

              }, icon: Icons.search, color: AppColors.blackText, size: 30)


        ),

        // Add other properties for the TextFormField as needed
      ),
    );
  }
}







