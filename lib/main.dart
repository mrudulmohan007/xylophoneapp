import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
void playSound(int soundNumber){
 final player = AudioCache();
   player.play('note$soundNumber.wav');
  
}
Expanded buildKey({required Color color, required int soundNumber}){
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Container(),
      onPressed: () {
        playSound(soundNumber);
      },
    ),
  );
}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
             buildKey(color:Colors.red,soundNumber: 1),
             buildKey(color:Colors.orange,soundNumber: 2),
             buildKey(color:Colors.yellow,soundNumber: 3),
             buildKey(color:Colors.green,soundNumber: 4),
             buildKey(color:Colors.teal,soundNumber: 5),
             buildKey(color:Colors.blue,soundNumber: 6),
             buildKey(color:Colors.purple,soundNumber: 7),
              
            ],
          )
          ) ,
          ),
    );
  }
}


     