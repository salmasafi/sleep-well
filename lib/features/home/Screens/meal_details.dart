import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

class MealDetails extends StatelessWidget {
  Image image;
  String mealName;
  MealDetails({required this.image, required this.mealName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
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
            Center(
              child: Image(
                image: image.image,
                height: 250.h,
                width: 250.w,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                mealName,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins"),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ]),
    );
  }
}
