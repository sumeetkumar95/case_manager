import 'package:flutter/material.dart';

class EvidenceOrganizer extends StatefulWidget {
  const EvidenceOrganizer({super.key});

  @override
  State<EvidenceOrganizer> createState() => _EvidenceOrganizerState();
}

class _EvidenceOrganizerState extends State<EvidenceOrganizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Evidence Organizer"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
