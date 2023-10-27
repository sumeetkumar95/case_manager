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
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 238, 210, 210),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'General Case Management',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 244, 201, 252),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Seeking postponement of a hearings',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 203, 252, 228),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Presenting a claim',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 192, 230, 247),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Remote and in person hearings',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 244, 201, 252),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Pension Loss (Basic Guide)',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 203, 252, 228),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Principle for Compensating pension loss (2022)',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 192, 230, 247),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'COVID-19',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Card(
                    color: Color.fromARGB(255, 239, 214, 222),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'Vulnerable Parties and Witnesses',
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 33, 60)),
                          ),
                          subtitle: Text(
                            "Resources",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
