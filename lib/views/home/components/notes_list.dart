import 'package:flutter/material.dart';

import '../../../data/models/note.dart';
import 'note_card.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    final note = Note(
      id: '1',
      title: 'Flutter Notes App',
      content:
          'Build a Flutter Notes App with us right now, Build a Flutter Notes App with us right now',
      createdAt: DateTime.now(),
    );
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => NoteCard(note: note),
    );
  }
}