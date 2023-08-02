import 'package:api_assignment/res/colors.dart';

import 'package:api_assignment/res/components/cards.dart';
import 'package:api_assignment/res/components/icons.dart';
import 'package:api_assignment/res/components/text.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../res/components/text_formfield.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final PageController _pageController = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.15, // Use a fraction of screen height
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
                    child: TextWidget('India', AppColors.whiteText, 13),
                  ),
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
                    padding: EdgeInsets.only(right: screenWidth * 0.08), // Adjust spacing based on screen width
                    child: TextFormFieldSearchBar(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: TextWidget('Buy Top Brands ', AppColors.blackText, 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    CardsView(height: screenHeight * 0.2, width: screenWidth * 0.22, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.2, width: screenWidth * 0.22, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.2, width: screenWidth * 0.22, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.2, width: screenWidth * 0.22, text: 'Apple'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: screenHeight * 0.3, // Adjust the height as needed
              child: PageView.builder(
                itemCount: 3,
                pageSnapping: true,
                controller: _pageController,
                itemBuilder: (_, index) {
                  // Replace the Container below with your desired page content
                  return Container(
                    width: screenWidth * 0.7, // Adjust width based on screen width
                    margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(
                      child: Text(
                        "Page $index",
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Add the SmoothPageIndicator for the new PageView
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4, // Replace with your desired count of pages
                effect: ExpandingDotsEffect(
                  dotColor: Colors.blueGrey,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.amber,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: TextWidget('Shop By', AppColors.blackText, 15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: TextWidget('Recently Viewed', AppColors.blackText, 15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: TextWidget('Daily essentials', AppColors.blackText, 15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    CardsView(height: screenHeight * 0.3, width: screenWidth * 0.24, text: 'Apple'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
