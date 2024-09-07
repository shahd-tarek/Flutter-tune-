import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';
import 'package:tune/widgets/tune_item.dart';

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Colors.orange, sound: "note2.wav"),
    TuneModel(color: Colors.yellow, sound: "note3.wav"),
    TuneModel(color: Colors.green, sound: "note4.wav"),
    TuneModel(color: Color.fromARGB(255, 44, 147, 124), sound: "note5.wav"),
    TuneModel(color: Colors.blue, sound: "note6.wav"),
    TuneModel(color: Colors.purple, sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        title: const Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: getTuneItems(),
      ),
    );
  }

  List<TuneItem> getTuneItems() {
    List<TuneItem> items = [];

    for (var tune in tunes) {
      items.add(TuneItem(
        tune: tune,
      ));
    }
    return items;
  }
}
