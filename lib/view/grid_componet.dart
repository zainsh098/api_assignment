import 'package:api_assignment/res/colors.dart';
import 'package:api_assignment/res/components/text.dart';
import 'package:api_assignment/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class GridComponent extends StatefulWidget {
  const GridComponent({super.key});

  @override
  State<GridComponent> createState() => _GridComponentState();
}

class _GridComponentState extends State<GridComponent> {

  HomeViewModel homeViewModel=HomeViewModel();

  @override
  void initState() {
    // TODO: implement initState



    homeViewModel.fetchListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ChangeNotifierProvider<HomeViewModel>(
        create: (BuildContext context)=> homeViewModel,
        child: Consumer<HomeViewModel>(

            builder: (context,value,_){



          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Column(
                children: [



                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(15),
                    itemCount: value.listdata.data!.listings!.length,



                    itemBuilder: (context, index) {
                      var listings=value.listdata.data!.listings![index];
                      var images=listings.images;


                    return Container(
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
                            child: Image.network(images![0].fullImage.toString(),height: 140,),

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
                                    child: TextWidget("RS ${value.listdata.data!.listings![index].listingNumPrice}",
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
                                      child: Text(value.listdata.data!.listings![index].marketingName.toString())

                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child:
                                    TextWidget(value.listdata.data!.listings![index].deviceRam.toString(), AppColors.blackText, 11),
                                  ),
                                  TextWidget(
                                      value.listdata.data!.listings![index].deviceCondition.toString(), AppColors.blackText, 11)
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
                                        value.listdata.data!.listings![index].listingLocation.toString(), AppColors.blackText, 10),
                                  ),
                                  TextWidget(value.listdata.data!.listings![index].listingDate.toString(), AppColors.blackText, 10)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    );



                  },



                  ),

                ),



                  SizedBox(height: 20,),




                ],
              ),
            ),
          );

    }



      ),)
    );
  }
}