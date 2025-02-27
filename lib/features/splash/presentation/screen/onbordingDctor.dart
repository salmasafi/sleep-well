import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/splash/presentation/widget/SkipWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: OnbordingDctor(),
  ));
}

class OnbordingDctor extends StatelessWidget {
  const OnbordingDctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Image.asset(
                      "assets/images/doctor.png",
                      height: 250,
                      width: 140,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Talk to a doctor",
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
                        "Now you can consult the best doctors easily while staying at home..",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 22,
                        ),
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
        },
      ),
    );
  }
}
