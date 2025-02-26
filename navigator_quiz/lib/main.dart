import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Builder(
//         builder: (context) => Center(
//           child: ElevatedButton(
//             child: const Text('Go to ScreenA'),
//             onPressed: () => Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const ScreenA())),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Hi, there!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Center(
          child: ElevatedButton(
            child: const Text('Go to ScreenA'),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenA())),
          ),
        ),
      ),
    );
  }
}
