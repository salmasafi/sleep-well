import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_well/Login_Doctor/Widgets.dart';

class SignUpDoctor extends StatefulWidget {
  SignUpDoctor({super.key});

  @override
  State<SignUpDoctor> createState() => _SignUpDoctorState();
}

class _SignUpDoctorState extends State<SignUpDoctor> {
  TimeOfDay selectedTime = TimeOfDay.now();
  TimeOfDay selectedTime_After = TimeOfDay.now();
  bool After = false;
  bool isAM = true;
  bool isAM_After = true;
  bool isAMSelected = true;
  bool isAMSelected_After = true;
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
                height: ScreenWidth * 0.2,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFF9F9F9)),
                height: Screenheight * 0.2,
                width: Screenheight * 0.2,
                child: Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: Screenheight * 0.05,
                    color: Color(0xFF9D9DA8),
                  ),
                ),
              ),
              SizedBox(
                height: Screenheight * 0.02,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Name",
                wght: 800,
                right_distance: 0.825,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                ScreenWidth: ScreenWidth,
                Screenheight: Screenheight,
                obsecure: false,
                add_suffix: false,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Email ID",
                wght: 800,
                right_distance: 0.8,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                ScreenWidth: ScreenWidth,
                Screenheight: Screenheight,
                obsecure: false,
                add_suffix: false,
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
                add_suffix: true,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Password Confirmation",
                wght: 800,
                right_distance: 0.58,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                ScreenWidth: ScreenWidth,
                Screenheight: Screenheight,
                obsecure: true,
                add_suffix: true,
              ),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Medical ID",
                wght: 800,
                right_distance: 0.75,
                textName_size: ScreenWidth * 0.030,
              ),
              TextFields_Doctor(
                  ScreenWidth: ScreenWidth,
                  Screenheight: Screenheight,
                  obsecure: true,
                  add_suffix: false),
              TexField_Name(
                ScreenWidth: ScreenWidth,
                FontsFamily: 'Urbanist',
                Name: "Daily available time",
                wght: 800,
                right_distance: 0.62,
                textName_size: ScreenWidth * 0.030,
              ),
              SizedBox(
                height: Screenheight * 0.01,
              ),
              Card(
                color: Color(0xFFFFFFFF),
                margin: EdgeInsets.symmetric(horizontal: Screenheight * 0.026),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Clockss(Screenheight, ScreenWidth, context, After = false),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF0F3F7),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              PM_AM("AM", isAM = true,
                                  Screenheight = Screenheight),
                              PM_AM("PM", isAM = false,
                                  Screenheight = Screenheight),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Clockss(Screenheight, ScreenWidth, context, After = true),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF0F3F7),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              PM_AM_After("AM", isAM = true,
                                  Screenheight = Screenheight),
                              PM_AM_After("PM", isAM = false,
                                  Screenheight = Screenheight),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Screenheight * 0.02,
              ),
              ButtonWidget_Dialog(
                FontsFamily: 'Urbanist',
                Location: () {
                  showCheckMarkDialog(context, Screenheight);
                },
                NameButton: "Create",
                Screenheight: Screenheight,
                AddIcon: false,
                iconss: Icons.arrow_forward,
              ),
            ]),
          ),
        ));
  }

  void showCheckMarkDialog(BuildContext context, double screenHeight) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.white.withOpacity(0.85),
          child: Container(
            height: screenHeight * 0.2,
            width: screenHeight * 0.3,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: screenHeight * 0.07),
                    Padding(
                      padding: EdgeInsets.all(screenHeight * 0.01),
                      child: Text(
                        "Successfully Created!",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: screenHeight * 0.025,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -screenHeight * 0.04,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF61C478),
                    ),
                    height: screenHeight * 0.08,
                    width: screenHeight * 0.08,
                    child: Icon(
                      Icons.check_sharp,
                      size: screenHeight * 0.04,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  GestureDetector PM_AM(String AM_PM, bool isAM, double Screenheight) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isAMSelected = isAM;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Screenheight * 0.0085, horizontal: Screenheight * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isAMSelected == isAM ? Colors.white : Colors.transparent,
          boxShadow: isAMSelected == isAM
              ? [BoxShadow(color: Colors.grey, blurRadius: 4)]
              : [],
        ),
        child: Text(
          AM_PM,
          style: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xFF213447),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  GestureDetector PM_AM_After(
      String AM_PM, bool isAM_After, double Screenheight) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isAMSelected_After = isAM_After;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Screenheight * 0.0085, horizontal: Screenheight * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isAMSelected_After == isAM_After
              ? Colors.white
              : Colors.transparent,
          boxShadow: isAMSelected_After == isAM_After
              ? [BoxShadow(color: Colors.grey, blurRadius: 4)]
              : [],
        ),
        child: Text(
          AM_PM,
          style: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xFF213447),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Container Clockss(double Screenheight, double ScreenWidth,
      BuildContext context, bool After) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF0F3F7),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: Screenheight * 0.005, vertical: Screenheight * 0.009),
      height: Screenheight * 0.04,
      width: ScreenWidth * 0.18,
      child: Center(
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: Screenheight * 0.5,
                  child: CupertinoTimerPicker(
                    mode: CupertinoTimerPickerMode.hm,
                    initialTimerDuration: Duration(
                        hours: selectedTime.hour, minutes: selectedTime.minute),
                    onTimerDurationChanged: (Duration newTime) {
                      setState(() {
                        if (!After) {
                          selectedTime = TimeOfDay(
                            hour: newTime.inHours % 24,
                            minute: newTime.inMinutes % 60,
                          );
                        } else {
                          selectedTime_After = TimeOfDay(
                            hour: newTime.inHours % 24,
                            minute: newTime.inMinutes % 60,
                          );
                        }
                      });
                    },
                  ),
                );
              },
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                !After
                    ? "${selectedTime.hourOfPeriod}:${selectedTime.minute.toString().padLeft(2, '0')}"
                    : "${selectedTime_After.hourOfPeriod}:${selectedTime_After.minute.toString().padLeft(2, '0')}",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
