import 'package:flutter/material.dart';
import 'package:fooddy/assets/colors.dart';
import 'package:fooddy/home/foodPageBody.dart';
import 'package:fooddy/utils/widgets/bigText.dart';
import 'package:fooddy/utils/widgets/smallText.dart';

import '../assets/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //The container directly bellow showes the header
        Container(
          margin: EdgeInsets.only(top: 45, bottom: 15),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Nigeria",
                      color: AppColors.mainColor,
                    ),
                    Column(
                      children: [
                        SmallText(
                          text: "Lagos",
                          color: Colors.black54,
                        )
                      ],
                    ),
                    Icon(Icons.arrow_drop_down_circle)
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          ),
        ),
        //This function bellow showes the body
        FoodPageBody(),
      ],
    ));
  }
}
