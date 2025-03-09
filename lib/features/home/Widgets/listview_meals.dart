
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/home/Widgets/meals.dart';

class ListViewMeals extends StatelessWidget {
  const ListViewMeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Meals(
            text: "Grains meal",
            image: Image.asset("assets/images/breakfast.png"),
          ),
          Meals(
            text: "Vegeterian meal",
            image: Image.asset("assets/images/vege.png"),
          ),
          Meals(text: "Eggs", image: Image.asset("assets/images/egg.png"),)
        ],
      ),
    );
  }
}
