import 'package:flutter/material.dart';

class ETPractice extends StatefulWidget {
  const ETPractice({super.key});

  @override
  State<ETPractice> createState() => _ETPracticeState();
}

class _ETPracticeState extends State<ETPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Directions"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
