import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(1);
                  },

                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(2); // Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),

              Expanded  (
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(3); // Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(4); // Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),

              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(5); // Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(6);// Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple, // Set the background color here
                  ),
                  onPressed: () {
                    playSound(7); // Correct the method name to play the audio
                  },
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      color: Colors.black, // Set the text color here
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
