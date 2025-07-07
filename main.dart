import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(EiririApp());

class EiririApp extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('英梨梨伴侣')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('点击播放语音'),
              ElevatedButton(
                onPressed: () => player.play(AssetSource('audio/morning.mp3')),
                child: Text('早安'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
