import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> answerForFirstQuestion = [
    {'title': 'Football', 'onPressed': () => debugPrint('Football')},
    {'title': 'Basketball', 'onPressed': () => debugPrint('Basketball')},
    {'title': 'Volleyball', 'onPressed': () => debugPrint('Volleyball')},
    {'title': 'Kickboxing', 'onPressed': () => debugPrint('Kickboxing')},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzy',
      home: Scaffold(
        appBar: AppBar(title: Text('Home'), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.016,
                  left: MediaQuery.of(context).size.width * 0.016,
                ),
                child: Text(
                  'What is your favourite hoppy?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaler.scale(24),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                children: answerForFirstQuestion.map((answerMap) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.008,
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: answerMap['onPressed'],
                        child: Text(answerMap['title']),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
