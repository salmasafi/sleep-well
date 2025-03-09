
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

Widget buildInputField(double screenWidth, String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
          ),
        ),
         SizedBox(height: 8.h),
        SizedBox(
          width: screenWidth * 0.9,
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              hintText: hint,
              hintStyle: const TextStyle(
                fontFamily: "Poppins",
                color: Color(0xFFA9A9A9),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenWidth * 0.03,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
              ),
            ),
          ),
        ),
      ],
    );
  }
