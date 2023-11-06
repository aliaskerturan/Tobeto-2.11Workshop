import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'last_page.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

// boilerplate => basmakalıp
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // 1. gereksinim

  // 2. gereksinim
  // Hot Reload => Restarta gerek kalmadan (spesifik durumlar hariç)
  // değişikliklerin görünmesi.
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // asset
            Image.asset(
              "assets/quizapp.png",
            ),
            // Image.network(
            //     "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            const Text("Quiz App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    buildContext,
                    MaterialPageRoute(
                        builder: (context) => const QuizScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              child: const Text(
                "Oyuna Başla",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// SABIT UI

// StatefullWidget

// 2 class
// Widget - State

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

// _State
class _QuizState extends State<QuizScreen> {
  void changeQuestion() {
    setState(() {
      i++;
    });
  }

  int i = 0;

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: getQuestion(),
    );
  }

  Widget getQuestion() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[i].question),
          ...questions[i].answers.map((answer) {
            return ElevatedButton(
                onPressed: () {
                  i < questions.length - 1
                      ? changeQuestion()
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LastPage()),
                        );
                },
                child: Text(answer));
          })
        ],
      ),
    );
  }
}
