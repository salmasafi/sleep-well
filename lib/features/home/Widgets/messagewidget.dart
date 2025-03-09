import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleep_well/core/utils/colors.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10) , topLeft: Radius.circular(20) , topRight: Radius.circular(10) ),
        color: Colors.deepOrange,
      ),
      child: Text(
        " Hello  ",
        style: TextStyle(fontSize: 20.sp, color: AppColors.whiteColor),
      ),
    );
  }
}
 

 
class OtherMessageWidget extends StatelessWidget {
  const OtherMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10) , topLeft: Radius.circular(20) , topRight: Radius.circular(10) ),
        color: Colors.deepPurple,
      ),
      child: Text(
        " Hello  ",
        style: TextStyle(fontSize: 20.sp, color:AppColors.whiteColor),
      ),
    );
  }
}
