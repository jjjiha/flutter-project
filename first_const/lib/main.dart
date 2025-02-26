import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CONST',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var questionIndex;
  @override
  Widget build(BuildContext context) {
    const survey = [
      {
        '질문': '좋아하는 음식은?',
        '답변': ['김찌', '불고기', '비빔국슈'],
      },
      {
        '질문': '좋아하는 색상은?',
        '답변': ['파', '노', '보'],
      },
      {
        '질문': '좋아하는 캐릭터는?',
        '답변': ['아이언맨', '배트맨', '스파이더맨'],
      }
    ];
    return const MaterialApp(
      home: Scaffold(

          // 사용자가 선택한 질문과 답변을 출력하는 로직

          ),
    );
  }
}
