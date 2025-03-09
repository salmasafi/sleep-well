import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/doc_info.dart' ;

class DoctorRatingCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final double rating;

  const DoctorRatingCard({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor,
              blurRadius: 5.r,
              spreadRadius: 2.r,
            ),
          ],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DocInfo(doctorName, imagePath, rating),)) ;
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  imagePath,
                  width: 50.w,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  RatingBarIndicator(
                    rating: rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color:AppColors.ratingColor,
                    ),
                    itemCount: 5,
                    itemSize: 20.sp, 
                    direction: Axis.horizontal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
