import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'read_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Project 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReadScreen(),
    );
  }
}