import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context),
          );
        },
        child: FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Evidence Details'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
              labelText: "Id",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Evidence Type",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Evidence Detail",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )
      ],
    ),
    actions: <Widget>[
      Center(
        child: new TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ),
    ],
  );
}
