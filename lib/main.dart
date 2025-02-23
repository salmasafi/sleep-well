import 'package:flutter/material.dart';
import 'package:sleep_well/features/collect_user_data/screens/collect_user_data.dart';
import 'features/Login_Doctor/Sign_In_Doctor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInDoctor(),
      //home: CollectUserData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
