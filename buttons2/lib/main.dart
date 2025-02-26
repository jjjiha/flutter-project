import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.red),
      home: const MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('onPressed text button');
              },
              onLongPress: () {
                print('onLongPress text button');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                // backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Text Button',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevoted button');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular((10.0))),
                elevation: 0.0,
              ),
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined button');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.black87, width: 2.0),
              ),
              child: const Text('Outlined button'),
            ),
            TextButton.icon(
              onPressed: null,
              // () {
              //   print('Icon button');
              // }
              icon: const Icon(
                Icons.home,
                size: 30.0,
                // color: Colors.black87,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                minimumSize: const Size(200, 50),
                disabledForegroundColor: Colors.pink,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.all(20),
              children: [
                TextButton(onPressed: () {}, child: const Text('TextButton')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('ElevatedButton')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
