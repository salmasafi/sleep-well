import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/chatwith_doctor.dart';
import 'package:sleep_well/features/home/Screens/chatwith_user.dart';

class UserCard extends StatelessWidget {

  const UserCard({
    super.key,

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagewithUser(),)) ;
            },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  "assets/images/user.jpg",
                  width: 40.w,
                  height: 40.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.w), 
      
        
            Text(
              "User",
              style: TextStyle(
                fontFamily: "Inter",
                color: AppColors.whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
      

      

          ],
        ),
      ),
    );
  }
}
