import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sleep_well/Login_Doctor/Sign_In_Doctor.dart';
=======
import 'package:sleep_well/features/collect_user_data/screens/collect_user_data.dart';
>>>>>>> a1d70bcf5abd6be088f3b363a455aec52a0791f8

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< HEAD
      home: SignInDoctor(),
=======
<<<<<<< HEAD
      //home: CollectUserData(),
=======
      debugShowCheckedModeBanner: false,
>>>>>>> saif
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
>>>>>>> a1d70bcf5abd6be088f3b363a455aec52a0791f8
    );
  }
}
