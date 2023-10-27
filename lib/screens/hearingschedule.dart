import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HearingSchedule extends StatefulWidget {
  const HearingSchedule({super.key});

  @override
  State<HearingSchedule> createState() => _HearingScheduleState();
}

class _HearingScheduleState extends State<HearingSchedule> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: Text("Hearing Scheduler")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            users.add({
              "name": "id " + (users.length + 1).toString(),
              "email": "Users" + (users.length + 1).toString() + "@gmail.com"
            });
          });
        },
        child: FaIcon(FontAwesomeIcons.plus),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                //leading: FaIcon(FontAwesomeIcons.user),
                title: Text(users[index]["name"]),
                subtitle: Text(users[index]["email"]),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      users.removeAt(index);
                    });
                  },
                  icon: FaIcon(FontAwesomeIcons.trash),
                ),
              );
            },
          )),
    );
  }
}
