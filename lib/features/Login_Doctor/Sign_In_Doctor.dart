import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sleep_well/features/Login_Doctor/Sign_Up_Doctor.dart';
import 'package:sleep_well/features/Login_Doctor/Widgets.dart';
import 'package:sleep_well/features/home/Screens/doc_profile_home.dart';
import 'package:sleep_well/features/home/presentation/home.dart';

class SignInDoctor extends StatelessWidget {

   SignInDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double Screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xFF14142F),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: ScreenWidth * 0.40,
              ),
              Text(
                "Sign In To SleepWell",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: Screenheight * 0.035,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: Screenheight * 0.05,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Email Address",
                wght: 800,
                right_distance: 0.72,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                ScreenWidth: ScreenWidth,
                Screenheight: Screenheight,
                obsecure: false,
                add_suffix: false,
              ),
              SizedBox(
                height: Screenheight * 0.02,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Password",
                wght: 800,
                right_distance: 0.77,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                ScreenWidth: ScreenWidth,
                Screenheight: Screenheight,
                obsecure: true,
                add_suffix: false,
              ),
              SizedBox(
                height: Screenheight * 0.02,
              ),
              ButtonWidget(
                FontsFamily: 'Urbanist',
                Location: DocProfileHome(),
                NameButton: "Sign In",
                Screenheight: Screenheight,
                AddIcon: true,
                iconss: Icons.arrow_forward,
              ),
              SizedBox(
                height: Screenheight * 0.2,
              ),
              RichText(
                text: TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: Screenheight * 0.016,
                      fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Color(0xFFED7E1C),
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpDoctor()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
