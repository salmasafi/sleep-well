import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

class TextfieldforPassword extends StatelessWidget {
  final String text ;
  const TextfieldforPassword({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 15.w,
            ),
            Text(
              text,
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                filled: true,
                fillColor: AppColors.whiteColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r))),
          ),
        )
      ],
    );
  }
}
