import 'package:flutter/material.dart';
import 'package:noteify/views/notes_view.dart';

void main() {
  runApp(const NoteifyApp());
}

class NoteifyApp extends StatelessWidget {
  const NoteifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
