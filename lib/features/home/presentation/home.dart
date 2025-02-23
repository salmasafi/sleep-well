import 'package:flutter/material.dart';
import 'package:sleep_well/features/update_profile/presentation/update_profile.dart';
import 'package:sleep_well/features/feedback/presentation/feedback.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1A1A38),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 66),
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0XFF191949),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UpdateProfile()),
                            );
                          },
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color(0xFF2a246a),
                            child:
                                Image.asset("assets/images/image_account.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1, // Keeps buttons square-like
                  children: [
                    _buildGridButton(context, "Library",
                        "assets/images/library_logo.png", () {}),
                    _buildGridButton(context, "Meditation & Relaxation",
                        "assets/images/meditation.png", () {}),
                    _buildGridButton(context, "ChatBot",
                        "assets/images/chatbot_logo.png", () {}),
                    _buildGridButton(context, "Healthy Food",
                        "assets/images/food_logo.png", () {}),
                    _buildGridButton(context, "ChatWith Doctor",
                        "assets/images/doctor_logo.png", () {}),
                    _buildGridButton(
                        context, "Feedback", "assets/images/feedback_logo.png",
                        () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackScreen()),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridButton(BuildContext context, String text, String imagePath,
      VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF14142F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 90),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
