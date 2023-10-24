import 'package:flutter/material.dart';

class MyCases extends StatefulWidget {
  const MyCases({super.key});

  @override
  State<MyCases> createState() => _MyCasesState();
}

class _MyCasesState extends State<MyCases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("My Cases"),
      ),
      body: Container(),
    );
  }
}
