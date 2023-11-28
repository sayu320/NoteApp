import 'package:flutter/material.dart';
import 'package:sample_project_3/view/screen_all_notes.dart';


Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
       home: ScreenAllNotes()
    );
  }
}

