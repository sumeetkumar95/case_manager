import 'package:flutter/material.dart';

class RoP extends StatefulWidget {
  const RoP({super.key});

  @override
  State<RoP> createState() => _RoPState();
}

class _RoPState extends State<RoP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rules Of Procedure"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
