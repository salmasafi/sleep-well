import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
 
 void main() {
  runApp(const MaterialApp(
    home:SplashScreen(),
  ));
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: 200,
              width: 250,
            ),
            Text("Sleep Well",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
