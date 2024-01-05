import 'package:case_manager/forms/hearing_form.dart';
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
          title: const Text("Hearing Scheduler")),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        // setState(() {
        //   users.add({
        //     "name": "id " + (users.length + 1).toString(),
        //     "email": "Users" + (users.length + 1).toString() + "@gmail.com"
        //   });
        // });
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => hearingForm()));
        // },
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context),
          );
        },
        child: FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
        child: Container(
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
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    DateTime? selectedDate;

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      //if (picked != null && picked != selectedDate) {

      setState(() {
        selectedDate = picked;
      });
      //}
    }

    TimeOfDay? selectedTime;
    Future<void> _selectTime(BuildContext context) async {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null && pickedTime != selectedTime)
        setState(() {
          selectedTime = pickedTime;
        });
    }

    return StatefulBuilder(builder: (context, setState) {
      return AlertDialog(
        title: const Text('Hearing Form'),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Hearing Type",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Judge Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Hearing Venue",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101));
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Container(
                width: double.infinity,
                height: 50,
                child: Text(selectedDate != null
                    ? (selectedDate!.toLocal().toString().split(' ')[0])
                    : "Select Date"),
              ),
            ),
            GestureDetector(
              onTap: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null && pickedTime != selectedTime)
                  setState(() {
                    selectedTime = pickedTime;
                  });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                child: Text(selectedTime != null
                    ? selectedTime!.format(context)
                    : "Select Time"),
              ),
            ),
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
    });
  }
}
