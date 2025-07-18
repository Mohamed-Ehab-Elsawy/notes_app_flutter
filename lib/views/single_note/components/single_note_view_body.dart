import 'package:flutter/material.dart';

import '../../../data/models/note.dart';

class SingleNoteViewBody extends StatelessWidget {
  final Note note;

  const SingleNoteViewBody({super.key, required this.note});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          note.createdAt.toString(),
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 8),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              note.content,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}