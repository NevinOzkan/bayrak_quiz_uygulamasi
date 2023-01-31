import 'package:bayrak_quiz_uygulamasi/SonucEkrani.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizEkrani extends StatefulWidget {
  const QuizEkrani({super.key});

  @override
  State<QuizEkrani> createState() => _QuizEkraniState();
}

class _QuizEkraniState extends State<QuizEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Doğru : 1",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Yanlış : 1",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              "1. Soru",
              style: TextStyle(fontSize: 30),
            ),
            Image.asset("Images/Turkiye.png"),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("Button A"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SonucEkrani(dogruSayisi: 3))));
                },
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("Button B"),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("Button C"),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("Button D"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
