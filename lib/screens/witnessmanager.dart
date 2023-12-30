import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    title: const Text('Hearing Form'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
              labelText: "Hearing Type",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Judge Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Hearing Venue",
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
