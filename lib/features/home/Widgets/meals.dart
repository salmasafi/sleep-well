
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/meal_details.dart';

class Meals extends StatelessWidget {
  String text;
  Image image;
  Meals({
    required this.text,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealDetails(image: image , mealName: text,),)) ;
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.blackColor,
                border: Border.all(color: AppColors.blackColor)),
            height: 135.78.h,
            width: 140.w,
            margin: EdgeInsets.only(left: 25.w),
            child: image,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          text,
          style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins"),
        )
      ],
    );
  }
}
