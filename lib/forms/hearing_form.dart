import 'package:case_manager/screens/hearingschedule.dart';
import 'package:flutter/material.dart';

import '../addDatatofirestore/model.dart';

class hearingForm extends StatefulWidget {
  const hearingForm({super.key});

  @override
  State<hearingForm> createState() => _hearingFormState();
}

class _hearingFormState extends State<hearingForm> {
  TextEditingController hearingTypeC = TextEditingController();
  TextEditingController judgeNameC = TextEditingController();
  TextEditingController vanueC = TextEditingController();
  bool isChecked = false;

  save() async {
    await HearFormData.addHearing(HearFormData(
      hearingTypeFS: hearingTypeC.text,
      judgeName: judgeNameC.text,
      vanue: vanueC.text,
    )).whenComplete(() => ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("save successfully"))));
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("HEARING FORM"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: hearingTypeC,
                decoration: InputDecoration(
                    labelText: 'Hearing Type',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: judgeNameC,
                decoration: InputDecoration(
                    labelText: 'Judge Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: vanueC,
                decoration: InputDecoration(
                    labelText: 'hearing venue',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Row(children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("Set Reminder")
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      save();
                    },
                    child: Text("Save"),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
