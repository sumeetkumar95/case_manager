import 'package:flutter/material.dart';

class PresidentialGuidance extends StatefulWidget {
  const PresidentialGuidance({super.key});

  @override
  State<PresidentialGuidance> createState() => _PresidentialGuidanceState();
}

class _PresidentialGuidanceState extends State<PresidentialGuidance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presidential Guidance"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
