import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        spacing: 20,
        children: [
          ElevatedButton(
            onPressed: decrement,
            child: Text(
              "-",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text("$count"),
          ElevatedButton(onPressed: increment, child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
