import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/auth/widgets/textfield_password.dart';
import 'package:sleep_well/features/auth/widgets/textfield_email.dart';
import 'package:sleep_well/core/utils/colors.dart';

class Signup1 extends StatelessWidget {
  const Signup1({super.key});

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
                height: 25.h,
              ),
              Text(
                "Sign Up For Free!",
                style: TextStyle(
                    fontFamily: "Urbanist",
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.whiteColor),
              ),
              SizedBox(
                height: 30.h,
              ),
              Textfieldforemail(text: "Email Address"),
              Textfieldforemail(text: "User Name"),
              TextfieldforPassword(text: "Password"),
              TextfieldforPassword(text: "Password Confirmation"),
              SizedBox(
                height: 15.h,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.buttonColor),
                    fixedSize: WidgetStatePropertyAll(Size(350.w, 60.h))),
                onPressed: () {
                  AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.scale,
            title: 'Successfuly Created',
         
            btnOkOnPress: () {},
            ).show();
                },
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    fontFamily: "Urbanist",
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
