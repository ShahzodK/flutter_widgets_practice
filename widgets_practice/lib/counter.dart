import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  CounterState createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  int count = 0;
  
  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      if(count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$count',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:
                ElevatedButton(
                  onPressed: increase,
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(width: 10),
              Center(
                child: 
                ElevatedButton(
                  onPressed: decrease,
                  child: Icon(Icons.remove),
                ),
              )
          ],
        )
      ],
    );
  }
}