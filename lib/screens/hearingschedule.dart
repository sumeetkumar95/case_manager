import 'package:flutter/material.dart';

class HearingSchedule extends StatefulWidget {
  const HearingSchedule({super.key});

  @override
  State<HearingSchedule> createState() => _HearingScheduleState();
}

class _HearingScheduleState extends State<HearingSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: Text("Hearing Scheduler")),
    );
  }
}
