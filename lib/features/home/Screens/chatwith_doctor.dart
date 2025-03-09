import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Widgets/doctor_rating.dart';

class ChatwithDoctor extends StatelessWidget {
  const ChatwithDoctor({super.key});

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
                color: AppColors.buttonColor,
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
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 36.h,
                width: 334.w,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: Colors.grey, width: 1.r),
                    borderRadius: BorderRadius.circular(15.r)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.red),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          DoctorRatingCard(
              imagePath: "assets/images/drahmad.png",
              doctorName: "Dr Ahmed",
              rating: 5),
          SizedBox(
            height: 25.h,
          ),
          DoctorRatingCard(
              imagePath: "assets/images/doc1.png",
              doctorName: "Dr Abdelrahman",
              rating: 3)
        ],
      ),
    );
  }
}
