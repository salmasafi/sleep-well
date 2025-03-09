import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Screens/doc_profile_home.dart';
import 'package:sleep_well/features/home/Widgets/input_field.dart';
import 'package:sleep_well/features/home/Widgets/logout.dart';
import 'package:sleep_well/features/home/Widgets/update_doc_button.dart';
import 'package:sleep_well/features/home/presentation/home.dart';

class EditDocProfile extends StatelessWidget {

   EditDocProfile({ super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, // Dynamic padding
                vertical: screenHeight * 0.09,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back Button & Title
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => DocProfileHome())),
                        child: Container(
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.1), // Spacing
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.05),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFF9F9F9)),
                      height: screenHeight * 0.2,
                      width: screenHeight * 0.2,
                      child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: screenHeight * 0.05,
                          color: Color(0xFF9D9DA8),
                        ),
                      ),
                    ),
                  ),

                  // Username Field
                  buildInputField(
                      screenWidth, "Username", "Enter your Username"),
                  SizedBox(height: screenHeight * 0.04),

                  // Email Field
                  buildInputField(screenWidth, "Email I’d", "Enter your Email"),
                  SizedBox(height: screenHeight * 0.04),

                  // Phone Number Field
                  buildInputField(
                      screenWidth, "Phone Number", "Enter your Phone Number"),
                  SizedBox(height: screenHeight * 0.04),

                  // Age Field
                  buildInputField(screenWidth, "Age", "Enter your Age"),
                  SizedBox(height: screenHeight * 0.06),

                  Row(
                    children: [],
                  )

                  // Update Button
                  ,
                  UpdateDocButton(
                      screenWidth: screenWidth, screenHeight: screenHeight),

                  SizedBox(
                    height: 10.h,
                  ),

                  logoutDocButton(
                      screenWidth: screenWidth, screenHeight: screenHeight)
                ],
              ),
            );
          },
        ));
  }
}
