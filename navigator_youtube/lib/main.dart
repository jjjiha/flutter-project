import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator Youtube',
        theme: ThemeData(useMaterial3: false, primarySwatch: Colors.red),
        home: const FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Go to Second page'),
            onPressed: () {
              // Navigator.push(context2,
              //     MaterialPageRoute(builder: (BuildContext context) {
              //   return const SecondPage();
              // }));
              Navigator.push(context2,
                  MaterialPageRoute(builder: (_) => const SecondPage()));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Go to First page'),
            onPressed: () {
              Navigator.pop(ctx);
            }),
      ),
    );
  }
}
