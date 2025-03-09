import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Widgets/listview_dinner.dart';
import 'package:sleep_well/features/home/Widgets/listview_lunch.dart';
import 'package:sleep_well/features/home/Widgets/listview_meals.dart';

class HealthyFood extends StatelessWidget {
  const HealthyFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 45),
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:AppColors.buttonColor,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "Breakfast",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
                fontSize: 24.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          ListViewMeals(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "Lunch",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
                fontSize: 24.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          ListViewLunch(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "Dinner",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
                fontSize: 24.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          ListViewDinner() 
        ],
      ),
    );
  }
}
