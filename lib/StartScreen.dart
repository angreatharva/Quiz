import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
             Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton.icon(
                onPressed: startQuiz,
              label:  Text('Start Quiz', style: GoogleFonts.lato(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,),
              icon: const Icon(Icons.arrow_right_alt),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo.shade800),
            )
          ],
        ),
      ),
    );
  }
}