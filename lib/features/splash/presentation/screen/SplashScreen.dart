import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';
import 'package:sleep_well/features/splash/presentation/screen/onbording1.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onbording1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: 200,
              width: 250,
            ),
            Text(
              "Sleep Well",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

