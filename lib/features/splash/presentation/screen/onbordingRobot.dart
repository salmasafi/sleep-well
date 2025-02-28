import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/splash/presentation/widget/SkipWidget.dart';
import 'package:sleep_well/features/Login_Doctor/Sign_In_Doctor.dart';




class OnbordingRobot extends StatelessWidget {
  const OnbordingRobot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 57),
              Image.asset(
                "assets/images/Robot.png",
                height: 300,
                width: 280,
              ),
              const SizedBox(height: 20),
              Text(
                "Chat Bot",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Our chat bot helps identify your insomnia level, offering insights and guidance to improve your sleep and well-being.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(),
              const SizedBox(height: 50), 
               SkipWidget(
                onSkip: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInDoctor()),
                  );
                }, onNext: () { },
                 customWidget: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInDoctor()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangColor, 
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: AppColors.backgroundColor, 
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            


              ),
              const SizedBox(height: 20), 
            ],
          ),
        ),
      ),
    );
  }
}
