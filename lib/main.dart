import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/features/auth/screens/login_as.dart';
import 'package:sleep_well/features/collect_user_data/screens/collect_user_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            //home: SignInDoctor(),
            home: LoginAs(),
          );
        }
    );
  }
}
