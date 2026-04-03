import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add-_note_button_sheet.dart';
import 'package:note_app/views/widgets/nots_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

