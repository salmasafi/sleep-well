import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/splash/presentation/widget/SkipWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: OnbordingAmico(),
  ));
}

class OnbordingAmico extends StatelessWidget {
  const OnbordingAmico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
              const SizedBox(height: 64),
              Image.asset(
                "assets/images/Amico.png",
                height: 288,
                width: 272,
              ),
              const SizedBox(height: 20),
              Text(
                "Healthy Life Style",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "A nurturing life-action plan designed to seamlessly integrate into your daily activities while putting your mental health first. By leveraging specially curated guidelines, you can unlock the treasures of physical activity, nutritious eating habits, and mindfulness, fostering a holistic sense of well-being.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(),
              const SizedBox(height: 50), 
              const SkipWidget(),
              const SizedBox(height: 20), 
            ],
          ),
        ),
      ),
    );
  }
}
