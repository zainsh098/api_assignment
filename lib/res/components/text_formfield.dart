

import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/icons.dart';
import 'package:flutter/material.dart';


class TextFormFieldSearchBar extends StatefulWidget {
 TextFormFieldSearchBar({super.key});

  @override
  State<TextFormFieldSearchBar> createState() => _TextFormFieldSearchBarState();
}

class _TextFormFieldSearchBarState extends State<TextFormFieldSearchBar> {
  final TextEditingController _emailController=TextEditingController();

  void _fetchSearchResults(String query) async {
    final apiUrl =
        'https://dev2be.oruphones.com/api/v1/global/assignment/searchModel';
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({"searchModel": query});

    final response = await http.post(

        Uri.parse(apiUrl), headers: headers, body: body);

    if (response.statusCode == 200) {
      // If the request is successful, you can handle the response here
      final responseData = jsonDecode(response.body);
      print(responseData);
    } else {
      // If the request fails, you can handle the error here
      print('Request failed with status: ${response.statusCode}');
    }
  }

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
        onChanged: (query) {
          _fetchSearchResults(query);
        },

        decoration: InputDecoration(

            prefixIcon: IconWidget(
                onPress: () {

                }, icon: Icons.search, color: AppColors.blackText, size: 30)


        ),

        // Add other properties for the TextFormField as needed
      ),
    );
  }
  }









