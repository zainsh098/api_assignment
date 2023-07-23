import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/icons.dart';
import 'package:api_assignment/res/components/text.dart';
import 'package:flutter/material.dart';

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
        toolbarHeight: 100,
        backgroundColor: Colors.blueGrey.shade800,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 60,bottom: 40),
                child: MainTitleText(),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 5.0, bottom: 50),
                  child: TextWidget('India', AppColors.whiteText, 13)),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, bottom: 50),
                child: IconWidget(
                  onPress: () {},
                  icon: Icons.location_on,
                  size: 25,
                  color: AppColors.whiteBackground,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 35),
                child: IconWidget(
                  onPress: () {},
                  icon: Icons.notifications,
                  size: 30,
                  color: AppColors.whiteBackground,
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
