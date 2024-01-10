import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SaveScreen extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Save Data to Firestore')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from Firestore:'), // Display Firestore data here
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