import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/home/Widgets/meals.dart';

class ListViewLunch extends StatelessWidget {
  const ListViewLunch({
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
            text: "Eggplant Lasagna",
            image: Image.asset("assets/images/lasagna.png"),
          ),
          Meals(
            text: "Cauliflower Crust Pizza",
            image: Image.asset("assets/images/pizza.png"),
          ),
          Meals(
            text: "Maccaroni",
            image: Image.asset("assets/images/maccaroni.png"),
          )
        ],
      ),
    );
  }
}
