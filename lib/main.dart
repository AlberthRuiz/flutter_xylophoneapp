import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophoneapp/models/xylophonekey_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<XylophoneKey> keys = [
    XylophoneKey(number: 1, note: "note1.wav", color: Colors.pink.shade300),
    XylophoneKey(number: 2, note: "note2.wav", color: Colors.pink.shade600),
    XylophoneKey(number: 3, note: "note3.wav", color: Colors.purple.shade300),
    XylophoneKey(number: 4, note: "note4.wav", color: Colors.purple.shade600),
    XylophoneKey(
        number: 5, note: "note5.wav", color: Colors.deepPurple.shade300),
    XylophoneKey(
        number: 6, note: "note6.wav", color: Colors.deepPurple.shade600),
    XylophoneKey(number: 7, note: "note7.wav", color: Colors.blue.shade300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "XylophoneApp",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(keys.length, (index) {
          return Expanded(
            child: Container(
              color: keys[index].color,
              child: TextButton(
                onPressed: () {
                  AudioPlayer mandarina = AudioPlayer();
                  mandarina.play(AssetSource("audios/${keys[index].note}"));
                  setState(() {});
                },
                child: Text(""),
              ),
            ),
          );
        }),
      ),
    );
  }
}
