import 'package:flutter/material.dart';
import 'package:notes_app/views/single_note/single_note_view.dart';
import 'package:notes_app/widgets/delete_note_button.dart';

import '../../../data/models/note.dart';
import 'note_description.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    child: Card(
      elevation: 0,
      child: ListTile(
        title: NoteDescription(note: note),
        trailing: DeleteNoteButton(onPressed: () {}),
        onTap: () {
          Navigator.pushNamed(context, SingleNoteView.id, arguments: note);
        },
      ),
    ),
  );
}