import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';

import '../../data/models/note.dart';
import 'components/single_note_view_body.dart';

class SingleNoteView extends StatelessWidget {
  static const id = '/single_note_view';

  const SingleNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          note.title,
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, EditNoteView.id,arguments: note);
            },
            icon: Icon(Icons.edit_note_rounded),
          ),
        ],
      ),
      body: SingleNoteViewBody(note: note),
    );
  }
}