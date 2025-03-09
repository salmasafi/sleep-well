import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/messagewith_doctor.dart';

class DocInfo extends StatelessWidget {
  String doctorName;
  String imagePath;
  double rating;

  DocInfo(this.doctorName, this.imagePath, this.rating, {super.key});

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
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Image.asset(
              imagePath,
              width: 140.w,
              height: 154.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text(
              doctorName,
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.h,
              ),
              Text(
                "About Doctor",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                width: 60.w,
              ),
              Icon(
                Icons.star,
                color: AppColors.whiteColor,
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "$rating ( 280 Reviews )",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: AppColors.whiteColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: AppColors.whiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(width: 110.w),
                  Text(
                    "AVAILABLE",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins"),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.circle,
                    color: AppColors.onlineColor,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 10.r,
                      spreadRadius: 2.r,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Material(
                    color: AppColors.chatButtonColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MessagewithDoctor(doctorName: doctorName,),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 60.w,
                        height: 60.h,
                        child: Icon(
                          Icons.chat,
                          color: AppColors.whiteColor,
                          size: 30.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
