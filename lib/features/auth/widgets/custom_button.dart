import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.buttonColor),
          fixedSize: WidgetStatePropertyAll(Size(350.w, 60.h))),
      onPressed: onPressed,
      child: Row(
        children: [
          SizedBox(
            width: 110.w,
          ),
          Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              fontFamily: "Urbanist",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.arrow_forward_sharp,
            color: AppColors.whiteColor,
            size: 35.sp,
          )
        ],
      ),
    );
  }
}
