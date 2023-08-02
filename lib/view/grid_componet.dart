import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/text.dart';
import 'package:flutter/material.dart';

class GridComponent extends StatelessWidget {
  const GridComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.42,

                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey.shade100,
                ),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          size: 24,
                        ),
                        onPressed: () {
                          // Handle favorite button tap
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(

                          'https://images.pexels.com/photos/4081882/pexels-photo-4081882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',height: 165,),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: TextWidget(
                                'Rs 5000',
                                AppColors.blackText,
                                15,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: TextWidget('Apple I phone 5s Plus',
                                  AppColors.blackText, 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child:
                                  TextWidget('128 GB', AppColors.blackText, 11),
                            ),
                            TextWidget(
                                'Condition Good', AppColors.blackText, 11)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: TextWidget(
                                  'Islamabad', AppColors.blackText, 10),
                            ),
                            TextWidget('Jul 12th', AppColors.blackText, 10)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
