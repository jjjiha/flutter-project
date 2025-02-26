import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Row',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        // child: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          // verticalDirection: VerticalDirection.down,
          children: [
            Container(
              // width: 100,
              height: 100,
              color: Colors.white,
              child: const Text('Container 1'),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.blue,
              child: const Text('Container 2'),
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.red,
              child: const Text('Container 3'),
            ),
            // const SizedBox(
            //   width: double.infinity,
            //   height: 20,
            // )
          ],
        ),
      ),
      // ),
    );
  }
}
