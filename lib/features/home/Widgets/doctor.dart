import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/chatwith_doctor.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String name;

  const DoctorCard({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1B33), 
          borderRadius: BorderRadius.circular(20.r), 
        ),
        child: Row(
          children: [
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatwithDoctor(),)) ;
            },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  imagePath,
                  width: 40.w,
                  height: 40.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.w), 
      
        
            Text(
              name,
              style: TextStyle(
                fontFamily: "Inter",
                color: AppColors.whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
      
            Spacer(),
      
            Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.green, 
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
