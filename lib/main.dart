
import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {

 
  

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

 int leftDiceNumber = 5;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(

        crossAxisAlignment:  CrossAxisAlignment.center,

        children: <Widget>[

          

          Expanded(
            
            child: TextButton(

              onPressed: () {

                _diceNumber();


              },

              child: Image.asset('images/dice$leftDiceNumber.png'),
            
            ),
          ),

           Expanded(
             child: TextButton(

               onPressed: () {
                 	
                
                 _diceNumber();


               },

               child: Image.asset('images/dice$rightDiceNumber.png'),
               
               
               ),
             
             
             
             ),



        ],



      ),
    );
  }


  void _diceNumber () {

    setState(() {               
        leftDiceNumber = Random().nextInt(6)+ 1;
        rightDiceNumber = Random().nextInt(6)+ 1;

       });

    

  }

  }

