
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Widgets/doctor.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 45),
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
                width: 30.w,
              ),
              Text(
                "Message",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter"),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          DoctorCard(
              imagePath: "assets/images/doc1.png", name: "Dr Abdelrahman"),
          DoctorCard(
              imagePath: "assets/images/drahmad.png", name: "Dr Ahmed")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.floatingButton,
        ),
      ),
    );
  }
}
