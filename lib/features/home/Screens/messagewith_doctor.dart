import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

class MessagewithDoctor extends StatelessWidget {
  String doctorName;
  MessagewithDoctor({required this.doctorName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 31, vertical: 45),
                        child: Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:AppColors.buttonColor,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 16.sp,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        doctorName,
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 16.sp,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 580.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type message ...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.mic, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Send Button
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(3.w , 5.h)),
                      iconSize: WidgetStatePropertyAll(10.sp),
                      iconColor: WidgetStatePropertyAll(AppColors.whiteColor),
                    ),
                    child: Text(
                      "Send",
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
