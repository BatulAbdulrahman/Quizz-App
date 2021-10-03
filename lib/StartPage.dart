import 'dart:developer';

import 'package:flutter/material.dart';

import 'Model.dart';
import 'lastPage.dart';

	class StartPage extends StatefulWidget {
	  @override
	  _StartPageState createState() => _StartPageState();
	}
	

	class _StartPageState extends State<StartPage> {
	 
	 var counter=0;
	   
	    List qList =[
	    Questions("1.The best Movie in The World is Harry Potter.", true),
	    Questions("2.Kelvin is a measure of temperature.", true),
	    Questions("3.The Atlantic Ocean is the biggest ocean on Earth.",false),
	    Questions("4.Sharks are mammals.",false),
	    Questions("5.The human skeleton is made up of less than 100 bones.",false),
	    Questions("6.Atomic bombs work by atomic fission.",true),
	    Questions("7.Molecules are chemically bonded.",true),
	    Questions("8.Spiders have six legs.",false),
	    Questions("9.Mount Kilimanjaro is the tallest mountain in the world.",false),
	    Questions("10.The study of plants is known as botany.",true),
	  ];
	     var score=0;
	  checkWin(bool userChoice , BuildContext context )
	{ if(userChoice==qList[counter].isCorrect)
	 { 
	    print("correct");
	    score= score+5;
	    final snackbar = SnackBar(
	      duration: Duration(milliseconds : 500),
	      backgroundColor: Colors.green,
	      content: Text("Correct!"),);
	    Scaffold.of(context).showSnackBar(snackbar);
	 }
	 else 
	 {print("false");
	        score = score+0;
	    final snackbar = SnackBar(
	      duration: Duration(milliseconds : 500),
	      backgroundColor: Colors.red,
	      content: Text("Incorrect!"),
	      );
	    Scaffold.of(context).showSnackBar(snackbar);
	 }
	    setState(() {
	   if(counter<10)
	   {
	     counter = counter +1;
	   }  
	  });
	} 
	 reset()
	 {
	   setState(() {
	     counter = 0;
	     score =0;
	   });
	 }
	

	

	

	  @override
	  Widget build(BuildContext context) {
	    return Scaffold(
	

	      
	      backgroundColor: Color(0xFF1C2341),
	

	      body: SingleChildScrollView(
                  child: Builder(
	                builder : (BuildContext context) => Container(
	            child: Column(
	              crossAxisAlignment: CrossAxisAlignment.center,
	

	              children: <Widget>[
	

	                Container(height: 400,
	                width: 500,
	                decoration: BoxDecoration(
	                  image: DecorationImage(image: AssetImage("img/pic1.png"),
	                  ),
	                  ),
	                ),
	

	                Padding(padding: EdgeInsets.only(top: 30)),
	

	

	                Container(
	                  child: Row(
	                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	                    children: <Widget>[
	                      Text("Score : $score /50",style: TextStyle(color : Colors.brown , 
	                      fontSize: 20,fontWeight: FontWeight.bold),),
	                  
	                      InkWell(
	                       child: Text("Reset Game",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),
	                      
                         onTap: reset,
	                     )
	

	                   ],
	                 ),
	                
	                ),
	

	               Padding(padding: EdgeInsets.only(top: 30)),
	                
	                Container(
	                      decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(30.0),
	                    
	                    ),
	                    height: 90.0,
	                    width: 400,
	                       child: Column(
	                         mainAxisAlignment: MainAxisAlignment.center,
	                         children: <Widget>[
	                           FittedBox(child: Text(qList[counter].qText,style: TextStyle(fontSize: 17.0,color: Colors.white)),)
	

	                         ],
	                       ),             
	                       
	                 ),
	

	                Padding(padding: EdgeInsets.only(top: 30)),
	                        
	                Column(
	                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	                  children: <Widget>[
	                     
	                  RaisedButton(
                      onPressed:()=> checkWin(true, context),
	

	                  padding: EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 20.0),
	                  
	                  child: Text("TRUE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
	

	                  color:  Colors.brown,
	                  shape: RoundedRectangleBorder(
	                    borderRadius: BorderRadius.circular(10)
	                  ),
	                  ),
	                  SizedBox(height: 20,), 
	                RaisedButton(onPressed: ()=> checkWin(false,context),
	

	                   padding: EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 20.0),
	                  
	                  child: Text("FALSE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
	

	                  color:  Colors.brown,
	

	                  shape: RoundedRectangleBorder(
	                    borderRadius: BorderRadius.circular(10)
	                  ),
	                  )
	                  ],
	                ),
	

	                
	

	               ],
	            ),
	          ),
	        ),
	      ),
	       
	      
	    );
	  }
	}