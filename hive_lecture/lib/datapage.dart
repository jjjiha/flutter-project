import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Datapage extends StatefulWidget {
  const Datapage({super.key});

  @override
  State<Datapage> createState() => _DatapageState();
}

class _DatapageState extends State<Datapage> {
  var mybox = Hive.box('hivebox');
  List mydata = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Item database"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(hintText: 'item'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(hintText: 'number'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save),
              label: const Text("Save"),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: mydata.length,
              itemBuilder: ((context, index) {
                return null;
              }),
            )
          ]),
        ));
  }
}
