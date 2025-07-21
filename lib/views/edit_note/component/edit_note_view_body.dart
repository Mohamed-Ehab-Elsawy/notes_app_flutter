import 'package:flutter/material.dart';
import 'package:notes_app/data/models/note.dart';
import 'package:notes_app/widgets/note_title_text_field.dart';

import 'edit_content_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  final Note note;
  final Function(String) onTitleChange, onContentChange;

  const EditNoteViewBody({
    super.key,
    required this.note,
    required this.onTitleChange,
    required this.onContentChange,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        NoteTitleTextField(initialValue: note.title, onChange: onTitleChange),
        SizedBox(height: 30),
        Expanded(
          child: EditContentTextField(
            initialValue: note.content,
            onChange: onContentChange,
          ),
        ),
        SizedBox(height: 30),
      ],
    ),
  );
}