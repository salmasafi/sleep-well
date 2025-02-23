import 'package:flutter/material.dart';
Future<dynamic> buildShowDialog(BuildContext context) {
  return showDialog(context: context, builder: (BuildContext context){
    return Container(
      height: 104,
      width:279 ,
      child: AlertDialog(
        backgroundColor: Color(0xff14142f),
        icon: Icon(Icons.person, color: Colors.white,size: 39,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Column(
          children: [
            Text("Your Result is", style: TextStyle(color: Colors.white,fontSize: 14),),
            Text("Normal",style: TextStyle(color: Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );

  },
  );
}
