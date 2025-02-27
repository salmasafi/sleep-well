import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/splash/presentation/widget/SkipWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: Onbording2(),
  ));
}

class Onbording2 extends StatelessWidget {
  const Onbording2({super.key});

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
              const SizedBox(height: 50), 
              Image.asset(
                "assets/images/OBJECTS.png",
                height: 192,
                width: 198,
              ),
              const SizedBox(height: 20),
              Text(
                "SleepWell Library",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "A unique library designed for mental discovery, offering books that guide your mind to new perspectives, ease challenges, and promote relaxation.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 30),
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


