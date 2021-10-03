
import 'package:delivery_app/welcome.dart';
import 'package:flutter/material.dart';
import 'StartPage.dart';
import 'lastPage.dart';
	void main()=> runApp(MyApp());
	

	class MyApp extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
	    return MaterialApp(
	      routes: <String , WidgetBuilder>{
          '/StartPage': (BuildContext context)=> new StartPage(),
         //  '/LastPage': (BuildContext context)=> new LastPage(),
        },
home:WelcomeScreen(),

	      title: 'quiz app',
	      debugShowCheckedModeBanner: false,
	

	      
	      
	      
	    );
	  }
	}
	



