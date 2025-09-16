import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteify/constants.dart';
import 'package:noteify/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(const NoteifyApp());
}

class NoteifyApp extends StatelessWidget {
  const NoteifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
