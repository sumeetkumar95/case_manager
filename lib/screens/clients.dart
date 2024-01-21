import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ClientScreen extends StatefulWidget {
  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String uid; // User's UID

  @override
  void initState() {
    super.initState();
    // Get the current user's UID
    uid = _auth.currentUser!.uid;
    // Reference to the 'clients' collection
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Screen'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('clients')
            .where('uid', isEqualTo: uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Text('Client data not found for this user.');
          }

          List<DocumentSnapshot> clientDocs = snapshot.data!.docs;
          Map<String, dynamic> clientData =
              clientDocs.first.data() as Map<String, dynamic>;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Client Name: ${clientData['clientname']}'),
                Text('Client Email: ${clientData['clientemail']}'),
                Text('Client Phone: ${clientData['clientphone']}'),
                Text('Client Address: ${clientData['clientaddress']}'),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddClientBottomSheet(context),
        tooltip: 'Add Client',
        child: Icon(Icons.add),
      ),
    );
  }

  void _openAddClientBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AddClientForm(uid: uid);
      },
    );
  }
}

class AddClientForm extends StatefulWidget {
  final String uid;

  AddClientForm({required this.uid});

  @override
  _AddClientFormState createState() => _AddClientFormState();
}

class _AddClientFormState extends State<AddClientForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Client',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Client Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Client Email'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Client Phone'),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Client Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _addClient();
                Navigator.pop(
                    context); // Close the bottom sheet after adding the client
              },
              child: Text('Add Client'),
            ),
          ],
        ),
      ),
    );
  }

  void _addClient() {
    FirebaseFirestore.instance.collection('clients').add({
      'uid': widget.uid,
      'clientname': _nameController.text,
      'clientemail': _emailController.text,
      'clientphone': _phoneController.text,
      'clientaddress': _addressController.text,
    });
  }
}
