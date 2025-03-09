import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/edit_doc_profile.dart';

class DocInfoButton extends StatelessWidget {

  final String text;
  final void Function()? onPressed;
   DocInfoButton({super.key, required this.text, this.onPressed , });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.docInfoColor),
          fixedSize: WidgetStatePropertyAll(Size(350.w, 60.h))),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>EditDocProfile(),)) ;
      },
      child: Row(
        children: [
          SizedBox(
            width: 110.w,
          ),
          Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
