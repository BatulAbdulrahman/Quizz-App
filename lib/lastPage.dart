import 'package:flutter/material.dart';
class LastPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Color(0xFF1C2341),
       body: SingleChildScrollView(
                child: Container(
           padding: EdgeInsets.fromLTRB(90, 350, 50, 300),
      child: Column(
          children: <Widget>[
             Text('Batul ^-^ ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
           SizedBox(
             height: 20,
           ),
           
             Text('Your Score :',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
           SizedBox(
             height: 20,
           ),
           
            Text('30 / 50',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 30),),
          SizedBox(
             height:180,
           ),
            RaisedButton(onPressed: (){},
	

	              padding: EdgeInsets.fromLTRB(80, 25, 80, 25),
	                  
	                  child: Text("Restart",style: TextStyle(color: Colors.brown,fontSize: 20,fontWeight: FontWeight.bold),),
	

	                  color:  Colors.white,
	

	                  shape: RoundedRectangleBorder(
	                    borderRadius: BorderRadius.circular(150)
	                  ),
	                  )
          ],
      ),
          
         ),
       ),
    );
  }
}

class SixedBox {
}