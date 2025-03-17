import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const   DiceRoller({super.key});
    @override
     State<DiceRoller> createState(){
        return _DicerollerState();

    }
}
final Randomizer=Random();
class _DicerollerState extends State<DiceRoller>{
var newroll=2;
  void diceroll() {
   
setState(() {
     newroll=Randomizer.nextInt(6)+1;
      

});
    
}
@override

  

  Widget build (context){
    return  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'ASSETS/dice-images/dice-$newroll.png',
                width: 200,
              ),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: diceroll,
                style: TextButton.styleFrom(
                  // padding:const EdgeInsets.only(top: 20,) ,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('DiceRoll'),
              )
            ],
          );
  }
  }
