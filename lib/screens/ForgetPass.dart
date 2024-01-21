import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgetPass extends StatefulWidget {
  const forgetPass({super.key});

  @override
  State<forgetPass> createState() => _forgetPassState();
}

class _forgetPassState extends State<forgetPass> {
  final emailControler = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: Text(
                  "Forget Password ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                controller: emailControler,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    auth
                        .sendPasswordResetEmail(
                            email: emailControler.text.toString())
                        .then((value) {});
                  },
                  child: Text("Forgot"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )))),
            ),
          ],
        ),
      ),
    );
  }
}
