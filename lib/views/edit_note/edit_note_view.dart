import 'package:flutter/material.dart';

import '../../data/models/note.dart';
import 'component/edit_note_view_body.dart';
import 'component/edit_view_top_bar.dart';

class EditNoteView extends StatefulWidget {
  static const id = '/edit_note_view';

  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String title = '';
  String content = '';

  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    return Scaffold(
      appBar: EditViewTopBar(
        onCheckPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pop(context);
          }
        },
      ),
      body: Form(
        key: _formKey,
        child: EditNoteViewBody(
          note: note,
          onTitleChange: (newTitle) {
            title = newTitle;
          },
          onContentChange: (newContent) {
            content = newContent;
          },
        ),
      ),
    );
  }
}