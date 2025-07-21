import 'package:flutter/material.dart';
import 'package:notes_app/data/models/note.dart';

import 'note_card.dart';

class NotesList extends StatelessWidget {
  final List<Note> notes;

  const NotesList({super.key, required this.notes});

  @override
  Widget build(BuildContext context) => ListView.builder(
    itemCount: notes.length,
    itemBuilder: (context, index) => NoteCard(note: notes[index]),
  );
}