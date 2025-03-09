import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/Login_Doctor/Sign_In_Doctor.dart';
import 'package:sleep_well/features/Login_Doctor/Sign_Up_Doctor.dart';
import 'package:sleep_well/features/home/Screens/edit_doc_profile.dart';
import 'package:sleep_well/features/home/presentation/home.dart';
import 'package:sleep_well/features/update_profile/presentation/update_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(350, 812),
      child: MaterialApp(
        //home: CollectUserData(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: UpdateProfile(),
          ),
        ),
    ) ;
    
  }
}
