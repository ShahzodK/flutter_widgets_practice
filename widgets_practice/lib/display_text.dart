import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final message;
  const DisplayText({super.key, required this.message});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange),
    );
  }
}