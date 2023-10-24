import 'package:flutter/material.dart';

class WitnessManager extends StatefulWidget {
  const WitnessManager({super.key});

  @override
  State<WitnessManager> createState() => _WitnessManagerState();
}

class _WitnessManagerState extends State<WitnessManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Witness Manager"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
