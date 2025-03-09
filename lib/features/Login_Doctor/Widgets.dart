import 'package:flutter/material.dart';

class TexField_Name extends StatelessWidget {
  const TexField_Name({
    super.key,
    required this.ScreenWidth,
    required this.Name,
    required this.FontsFamily,
    required this.wght,
    required this.right_distance,
    required this.textName_size,
  });

  final double ScreenWidth;
  final String Name;
  final String FontsFamily;
  final double wght;
  final double right_distance;
  final double textName_size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: ScreenWidth * right_distance),
      child: Text(
        Name,
        style: TextStyle(
          fontSize: textName_size,
          fontFamily: FontsFamily,
          color: Color(0xFFFFFFFF),
          fontVariations: [
            FontVariation('ital', 0),
            FontVariation('wght', wght)
          ],
        ),
      ),
    );
  }
}

class TextFields_Doctor extends StatefulWidget {
  const TextFields_Doctor({
    super.key,
    required this.ScreenWidth,
    required this.Screenheight,
    required this.obsecure,
    required this.add_suffix,
  });

  final double ScreenWidth;
  final double Screenheight;
  final bool obsecure;
  final bool add_suffix;

  @override
  State<TextFields_Doctor> createState() => _TextFieldsDoctorState();
}

class _TextFieldsDoctorState extends State<TextFields_Doctor> {
  late bool isObscure;
  late IconData visibilityIcon;

  @override
  void initState() {
    super.initState();
    isObscure = widget.obsecure;
    visibilityIcon = Icons.visibility;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.ScreenWidth * 0.05,
        vertical: widget.Screenheight * 0.006,
      ),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          suffixIcon: widget.add_suffix
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                      visibilityIcon =
                          isObscure ? Icons.visibility : Icons.visibility_off;
                    });
                  },
                  child: Icon(visibilityIcon, color: Colors.grey),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            horizontal: widget.ScreenWidth * 0.03,
            vertical: widget.Screenheight * 0.015,
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.Screenheight,
    required this.NameButton,
    required this.Location,
    required this.FontsFamily,
    this.AddIcon = false,
    this.iconss = Icons.arrow_forward,
  });

  final double Screenheight;
  final String NameButton;
  final Widget Location;
  final String FontsFamily;
  final bool AddIcon;
  final IconData iconss;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Screenheight * 0.02),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minWidth: Screenheight * 0.40,
        height: Screenheight * 0.055,
        color: Color(0xFF54408C),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Location;
            },
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NameButton,
              style: TextStyle(
                fontFamily: FontsFamily,
                color: Color(0xFFFFFFFF),
                fontSize: Screenheight * 0.02,
                fontWeight: FontWeight.w800,
              ),
            ),
            if (AddIcon) ...[
              SizedBox(width: 8),
              Icon(iconss, color: Colors.white, size: Screenheight * 0.030),
            ],
          ],
        ),
      ),
    );
  }
}

class ButtonWidget_Dialog extends StatelessWidget {
  const ButtonWidget_Dialog({
    super.key,
    required this.Screenheight,
    required this.NameButton,
    required this.Location,
    required this.FontsFamily,
    this.AddIcon = false,
    this.iconss = Icons.arrow_forward,
  });

  final double Screenheight;
  final String NameButton;
  final VoidCallback? Location;
  final String FontsFamily;
  final bool AddIcon;
  final IconData iconss;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Screenheight * 0.02),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minWidth: Screenheight * 0.40,
        height: Screenheight * 0.055,
        color: Color(0xFF54408C),
        onPressed: Location,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NameButton,
              style: TextStyle(
                fontFamily: FontsFamily,
                color: Color(0xFFFFFFFF),
                fontSize: Screenheight * 0.03,
                fontWeight: FontWeight.w800,
              ),
            ),
            if (AddIcon) ...[
              SizedBox(width: Screenheight * 0.01),
              Icon(iconss, color: Colors.white, size: Screenheight * 0.020),
            ],
          ],
        ),
      ),
    );
  }
}
