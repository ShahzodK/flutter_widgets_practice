import 'package:flutter/material.dart';
import 'package:widgets_practice/counter.dart';
import 'package:widgets_practice/display_text.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: DisplayText(message: 'This message passed as a parameter to a widget'),
            ),
            SizedBox(height: 10),
            Center(
              child: DisplayText(message: 'This is a second message'),
            ),
            SizedBox(height: 40),
            Center(
              child: Counter(),
            )
          ],
        )
      );
  }
}