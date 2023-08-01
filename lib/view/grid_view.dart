import 'package:api_assignment/view_model/grid_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});






  @override
  Widget build(BuildContext context) {
    final gridViewModel = Provider.of<GridViewModel>(context);

    return  GridView.builder(

      shrinkWrap: true, // Use shrinkWrap to allow GridView to be inside a SingleChildScrollView
      physics: NeverScrollableScrollPhysics(), // Disable scrolling for GridView
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: gridViewModel.gridItems.length,
      itemBuilder: (context, index) {
        final item = gridViewModel.gridItems[index];
        return GridTile(
          child: Container(
            height: 10,
            color: Colors.blueGrey[100 * (index % 9 + 1)],
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.network('https://images.pexels.com/photos/4807213/pexels-photo-4807213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle favorite button tap
                      },
                    ),
                  ],
                ),
                Text('Price'), // Replace with the actual price
                Text('Model Name'), // Replace with the actual model name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ROM'), // Replace with the actual ROM value
                    Text('Condition'), // Replace with the actual condition
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location'), // Replace with the actual location
                    Text('Date'), // Replace with the actual date
                  ],
                ),
              ],
            ),
          ),
        );

      },
    );
  }
}