import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/icons.dart';
import 'package:api_assignment/res/components/text.dart';
import 'package:flutter/material.dart';

import '../res/components/text_formfield.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.blueGrey.shade800,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 42, bottom: 15),
                    child: MainTitleText(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 15.0, bottom: 15),
                      child: TextWidget('India', AppColors.whiteText, 13)),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0, bottom: 15),
                    child: IconWidget(
                      onPress: () {},
                      icon: Icons.location_on,
                      size: 25,
                      color: AppColors.whiteBackground,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, bottom: 23),
                    child: IconWidget(
                      onPress: () {},
                      icon: Icons.notifications,
                      size: 30,
                      color: AppColors.whiteBackground,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextFormFieldSearchBar(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body:  Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10,),
            child: TextWidget('Buy Top Brands ', AppColors.blackText, 15),
          ),
          
          
          
          
          
          
          
          
        ],
      ),
    );
  }
}
