import 'package:flutter/material.dart';

var history = "";

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "History",
        ),
        backgroundColor: Colors.red,
      ),
      body: Text(
        history,
        style: const TextStyle(fontSize: 30.0),
      ),
    );
  }
}
