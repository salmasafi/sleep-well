import 'package:flutter/material.dart';
//import 'package:sleep_well/features/home/presentation/home.dart';
//import 'package:sleep_well/features/collect_user_data/screens/collect_user_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text("Sleep Well"),
      ),
      //home: CollectUserData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
