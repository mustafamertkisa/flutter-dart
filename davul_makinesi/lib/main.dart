import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(drumMachine());
}

class drumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: drumInterface(),
      ),
    );
  }
}

class drumInterface extends StatelessWidget {
  final player = AudioCache();

  void playAudio(String audio) {
    player.play("$audio.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrum("bip", Colors.deepOrangeAccent),
                  ),
                  Expanded(
                    child: buildDrum("clap3", Colors.greenAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrum("clap1", Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrum("clap2", Colors.redAccent),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrum("ridebel", Colors.yellow),
                  ),
                  Expanded(
                    child: buildDrum("oobah", Colors.deepPurpleAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrum("crash", Colors.pink),
                  ),
                  Expanded(
                    child: buildDrum("clap2", Colors.teal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrum(String audio, Color color) {
    return FlatButton(
      padding: EdgeInsets.all(8.0),
      onPressed: () {
        playAudio(audio);
      },
      child: Container(
        color: color,
      ),
    );
  }
}
