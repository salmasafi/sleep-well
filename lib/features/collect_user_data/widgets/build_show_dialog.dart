import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Future<dynamic> buildShowDialog(BuildContext context) {
  return showDialog(context: context, builder: (BuildContext context){
    return Container(
      height: 104.h,
      width:279.w ,
      child: AlertDialog(
        backgroundColor: Color(0xff14142f),
        icon: Icon(Icons.person, color: Colors.white,size: 39,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Column(
          children: [
            Text("Your Result is", style: TextStyle(fontFamily:'Poppins', color: Colors.white,fontSize: 14.sp),),
            Text("Normal",style: TextStyle(fontFamily:'Poppins',color: Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );

  },
  );
}
