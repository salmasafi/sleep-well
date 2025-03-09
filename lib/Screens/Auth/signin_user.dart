import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/Screens/Auth/signup_1.dart';
import 'package:sleep_well/Screens/widgets/custom_button.dart';
import 'package:sleep_well/Screens/widgets/textfield_password.dart';
import 'package:sleep_well/Screens/widgets/textfield_email.dart';
import 'package:sleep_well/core/utils/colors.dart';

class SigninUser extends StatelessWidget {
  const SigninUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Text(
                    "Sign In To SleepWell",
                    style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 30.sp,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Textfieldforemail(
                  text: "Email Address",
                ),
                TextfieldforPassword(text: "Password"),
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(text: "Sign In"),
                SizedBox(
                  height: 150.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110.w,
                    ),
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Signup1(),
                          ));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.deepOrange),
                        ))
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
