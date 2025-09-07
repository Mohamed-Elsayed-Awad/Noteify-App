import 'package:flutter/material.dart';
import 'package:noteify/widgets/add_note.dart';
import 'package:noteify/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              sheetAnimationStyle: AnimationStyle(
                curve: Curves.easeInCubic,
              ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        backgroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}

