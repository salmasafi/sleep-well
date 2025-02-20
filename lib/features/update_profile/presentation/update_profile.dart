import 'package:flutter/material.dart';
import 'package:sleep_well/features/home/presentation/home.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1A1A38),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 28),
                    child: GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home())),
                      child: Container(
                        width: screenWidth * 0.1, // Responsive size
                        height: screenWidth * 0.1,
                        decoration: BoxDecoration(
                          color: const Color(0xFF54408C), // Purple background
                          borderRadius:
                              BorderRadius.circular(12), // Rounded edges
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                      width: screenWidth * 0.18), // Space between button & text

                  // "Edit Profile" Text
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24, // Responsive font size
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045, // Responsive font size
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
              ),
              const SizedBox(height: 8), // Space between text and input field

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white), // Text color inside field
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Colors.transparent, // Keeps the dark background
                      hintText: "Enter your Username",
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFFA9A9A9),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.02,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Email I’d",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045, // Responsive font size
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white), // Text color inside field
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Colors.transparent, // Keeps the dark background
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFFA9A9A9),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.02,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045, // Responsive font size
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white), // Text color inside field
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Colors.transparent, // Keeps the dark background
                      hintText: "Enter your Phone Number",
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFFA9A9A9),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.02,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Age",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.045, // Responsive font size
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white), // Text color inside field
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Colors.transparent, // Keeps the dark background
                      hintText: "Enter your Age",
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFFA9A9A9),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.02,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFA9A9A9)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible:
                            false, // Prevents dismissing by tapping outside
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Green Check Icon
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // Success Message
                                const Text(
                                  "Successfully Updated!",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // OK Button
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () =>
                                      Navigator.pop(context), // Close dialog
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: "Poppins"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 255, 255, 255), // Dark background
                      minimumSize: Size(screenWidth * 0.8,
                          screenHeight * 0.06), // Custom size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Rounded edges
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      "Update",
                      style: TextStyle(
                        color: Color(0xFF14142F),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
