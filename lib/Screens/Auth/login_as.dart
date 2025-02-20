import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/Screens/Auth/signin_user.dart';
import 'package:sleep_well/core/utils/colors.dart';

class LoginAs extends StatelessWidget {
  const LoginAs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            SizedBox(height: 35.h,) , 
            Center(
              child: SizedBox(
                child: Image.asset(
                  "assets/images/undraw_Login.png",
                  height: 187.h,
                  width: 317.w,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70.w,
                ),
                Text(
                  "Login AS",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            MaterialButton(
                color: AppColors.buttonColor,
                minWidth: 330.w,
                height: 60.h,
                onPressed: () {},
                child: Text(
                  "Doctor",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp),
                )),
            SizedBox(
              height: 30.h,
            ),
              MaterialButton(
                color: AppColors.buttonColor,
                minWidth: 330.w,
                height: 60.h,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninUser(),)) ;
                },
                child: Text(
                  "Patient",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp),
                )),
          ],
        ));
  }
}
