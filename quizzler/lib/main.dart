import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'QuizBrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ẩn nhãn debug
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizBrain.getAnswer();

    setState(() {
      if (correctAnswer == userAnswer) {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green, size: 30));
      } else {
        scoreKeeper.add(const Icon(Icons.close, color: Colors.red, size: 30));
      }

      if (quizBrain.isEndOfQuiz()) {
        Alert(
          context: context,
          title: "Hoàn Thành!",
          desc: "Bạn đã trả lời hết câu hỏi.",
          buttons: [
            DialogButton(
              child: const Text(
                "Chơi lại",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  quizBrain.resetQuestionNumber();
                  scoreKeeper.clear();
                });
              },
              width: 120,
            )
          ],
        ).show();
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Hiển thị câu hỏi
        Expanded(
          flex: 5,
          child: Card(
            elevation: 6,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  quizBrain.getQuestion(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ),
        
        // Nút chọn "Đúng"
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () => checkAnswer(true),
            child: const Text(
              'ĐÚNG',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),

        // Nút chọn "Sai"
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () => checkAnswer(false),
            child: const Text(
              'SAI',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),

        // Hiển thị lịch sử trả lời (đúng/sai)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: scoreKeeper,
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
