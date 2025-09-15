import 'package:flutter/material.dart';
import 'package:noteify/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            // top: 28,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            CustomTextField(
              maxlines: 1,
              title: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxlines: 9,
              title: 'Content',
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)),
                width: double.infinity,
                child: Center(
                    child: Text('Add',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

