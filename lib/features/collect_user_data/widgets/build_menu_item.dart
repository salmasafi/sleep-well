import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BuildMenuItem extends StatelessWidget {
  const BuildMenuItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          width: 343.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1234),
          ),
          child: Card(
            child: Text(text, style: TextStyle(fontFamily:'Poppins',fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Colors.black),),
          ),
        ),
      ),
    );
  }
}