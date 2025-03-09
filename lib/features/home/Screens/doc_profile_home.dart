import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Widgets/chat_button.dart';
import 'package:sleep_well/features/home/Widgets/doc_info_button.dart';

class DocProfileHome extends StatelessWidget {

   DocProfileHome({   super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                DocInfoButton(

                  text: "Account"),
                SizedBox(
                  height: 40.h,
                ),
                ChatButton(
                  text: "Chats",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
