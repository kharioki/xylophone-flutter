import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                // create a new player
                final player = AudioCache();
                // tell it what to play
                player.play('note1.wav');
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
