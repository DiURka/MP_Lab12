import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReadScreen extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Read Data from Firestore')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var data = snapshot.data?.docs;
          if (data == null) {
            return CircularProgressIndicator();
          }

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['text']),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: _textFieldController),
              ElevatedButton(
                onPressed: () {
                  _saveDataToFirestore(_textFieldController.text);
                },
                child: Text('Save to Firestore'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveDataToFirestore(String data) {
    FirebaseFirestore.instance.collection('data').add({'text': data});
    if (data.isNotEmpty) {
      try {
        FirebaseFirestore.instance.collection('data').add({'text': data});
        // Add any additional logic or error handling here
        print('Data saved to Firestore: $data');
      } catch (e) {
        print('Error saving data to Firestore: $e');
      }
    } else {
      print('Data is empty. Please enter valid data.');
    }
  }
}