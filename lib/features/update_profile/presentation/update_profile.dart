import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/home/Widgets/logout.dart';
import 'package:sleep_well/features/home/presentation/home.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A1A38),
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
                            MaterialPageRoute(builder: (context) => Home())),
                        child: Container(
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:  Icon(
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
                          color:AppColors.whiteColor,
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

                  // Update Button
                  UpdateButton(screenWidth: screenWidth, screenHeight: screenHeight),
                  SizedBox(height: 10.h,) ,

                  logoutDocButton(screenWidth: screenWidth, screenHeight: screenHeight)
                ],
              ),
            );
          },
        ) );
  
  }

  // Reusable Widget for Input Fields
  Widget buildInputField(double screenWidth, String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
          ),
        ),
        const SizedBox(height: 8),
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
}

class UpdateButton extends StatelessWidget {
  const UpdateButton({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Successfully Updated!",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize:
              Size(screenWidth * 0.8, screenHeight * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: Text(
          "Update",
          style: TextStyle(
            color: const Color(0xFF14142F),
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.05,
          ),
        ),
      ),
    ) ;  

  }
}
