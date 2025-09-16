import 'package:flutter/material.dart';
import 'package:noteify/widgets/custom_app_bar.dart';
import 'package:noteify/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(
              title: 'Noteify',
              icon: Icons.search,
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
