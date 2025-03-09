import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/home/Widgets/meals.dart';

class ListViewDinner extends StatelessWidget {
  const ListViewDinner({
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
            text: "Vegetarian Bean Tacos",
            image: Image.asset("assets/images/taco.png"),
          ),
          Meals(
            text: "Loaded Baked Potatoes",
            image: Image.asset("assets/images/potatos.png"),
          ),
          
        ],
      ),
    );
  }
}
