import 'package:flutter/material.dart';

class CMOS extends StatefulWidget {
  const CMOS({super.key});

  @override
  State<CMOS> createState() => _CMOSState();
}

class _CMOSState extends State<CMOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Case Managment"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
