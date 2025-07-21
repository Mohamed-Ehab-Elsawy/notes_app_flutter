import 'package:flutter/material.dart';

import '../../../data/models/note.dart';

class NoteDescription extends StatelessWidget {
  final Note note;

  const NoteDescription({super.key, required this.note});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        note.title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 4),
      Text(
        note.content,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 8),
      Text(
        note.createdAt.toString(),
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,color: Colors.grey),
      ),
    ],
  );
}