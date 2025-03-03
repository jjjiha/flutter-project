import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HivePage extends StatefulWidget {
  const HivePage({super.key});

  @override
  State<HivePage> createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  final _mybox = Hive.box("databox");

  void writeData() {
    _mybox.put(1, "codingchef");
    _mybox.put(2, ["jane", 30, "Seoul"]);
  }

  void readData() {
    print(_mybox.get(1));
  }

  void deleteData() {
    _mybox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
              onPressed: () {
                writeData();
              },
              child: const Text("Write")),
          FilledButton(
              onPressed: () {
                readData();
              },
              child: const Text("Read")),
          FilledButton(
              onPressed: () {
                deleteData();
              },
              child: const Text("Delete")),
        ],
      ),
    ));
  }
}
