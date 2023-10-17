import 'dart:math';//to use random numbers
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red.shade300,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.redAccent,
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {//use hotrestart,not use hotreload due to statefulwidget
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {//state is mutable
  int leftDiceNumber=1;//stores only integers
  int rightDiceNumber=1;
  void changeDiceface() {
    setState(() { //it triggers to reload without giving the reload option
      leftDiceNumber=Random().nextInt(6)+1;// it prints 1-6 i.e it starts from 0,but we don't have 0th image.so,to avoid that,use +1
      rightDiceNumber=Random().nextInt(6)+1;// To get changed of both dices when any one dice is pressed
    });
  }
  @override
  Widget build(BuildContext context) {
    //refresh itself when we save this file
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(//automatically it resizes according to phone
            //flex: 2,makes wide the image 2 times than the other

            child:TextButton(
              onPressed: () {
                setState(() { //it triggers to reload without giving the reload option
                  leftDiceNumber=Random().nextInt(6)+1;// it prints 1-6 i.e it starts from 0,but we don't have 0th image.so,to avoid that,use +1
                  rightDiceNumber=Random().nextInt(6)+1;// To get changed of both dices when any one dice is pressed
                });

              },// have no arguments. so,()
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),//$- used to add variables
              ),
            ),
            //child:Image:asset('images/dice1.png'),Another way of inserting images
          ),
          Expanded( //automatically it resizes according to phone

            child:TextButton(
              onPressed: () {
                changeDiceface();//to minimize the code,use this by using function where we declared it already
                },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}





