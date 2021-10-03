import 'package:flutter/material.dart';

import 'StartPage.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF1C2341),
       body: Stack(
         children: <Widget>[
           SafeArea(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Spacer(flex: 2,),
                
             Text("Let is Play Quizz,",style: TextStyle(color: Colors.white , fontSize: 40 , fontWeight:FontWeight.bold)),
           Text("Enter Your Information Below",style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white,),),
             Spacer(),
             TextField(
               decoration: InputDecoration(
                 hintText: "Full Name",
                 hintStyle: TextStyle(color: Colors.grey),
focusColor: Colors.white,
                 fillColor: Colors.grey.shade900,
                 filled: true,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
                 prefixIcon: const Icon(
                   Icons.person,
                   color: Colors.white,
                                   ),
               ),
             ),
               Spacer(),
              InkWell(
                onTap: (){
Navigator.of(context).pushNamedAndRemoveUntil('/StartPage', (route) => false);
                },
                              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    
                    color:Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text("Lets Start Quiz",style: TextStyle(color: Colors.white)),
                ),
              ),
                Spacer(flex: 2,),
               ],),
             ),
           ),
         ],
       ),
    );
  }

}