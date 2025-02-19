import 'package:flutter/material.dart';

class CollectUserData extends StatelessWidget {
  const CollectUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14142F),
     body: Column(
       //mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         /*SizedBox(
           height: 45,
         ),*/
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 31,vertical: 45),
           child: Container(
             width: 32,
               height: 32,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                   color: Color(0xff54408C),
               ),

               child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,size: 16, color: Colors.white,)))),
         ),
         Center(child: Text("Fill out the form below to receive your diagnosis results",
           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800),)),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         buildMenuItem("How many hours do you typically sleep each night?"),
         Center(
           child: Container(
             width:143 ,
             height:50 ,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(1234),
             ),
             child: ElevatedButton(
                 onPressed: (){},
                 style: ButtonStyle(
                   backgroundColor: WidgetStatePropertyAll(Color(0xff54408C)),
                 ),
                 child: Center(

               child: Text("CHECK", style: TextStyle(color: Color(0xff14142F)),),
             )),
           ),
         ),
       ],
     ),
    );
  }
  Widget buildMenuItem(String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ,vertical:8 ),
        child: Container(
          width: 343,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1234),
          ),
          child: Card(
            child: Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.black),),
          ),
        ),
      ),
    );
      
  }
}
