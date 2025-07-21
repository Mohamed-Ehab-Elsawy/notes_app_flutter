import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../cubits/add_notes/add_notes_cubit.dart';
import '../../../data/models/note.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/note_content_text_field.dart';
import '../../../widgets/note_title_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _title = '';
  String _content = '';

  @override
  Widget build(BuildContext context) => Form(
    key: _formKey,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            'Add New Note',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          NoteTitleTextField(
            hintText: 'Title',
            onChange: (value) {
              _title = value;
            },
          ),
          SizedBox(height: 30),
          NoteContentTextField(
            hintText: 'Content',
            onChange: (value) {
              _content = value;
            },
          ),
          SizedBox(height: 30),
          CustomElevatedButton(
            buttonTitle: 'Add Note',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _addNote();
              }
            },
          ),
        ],
      ),
    ),
  );

  _addNote() {
    final cubit = BlocProvider.of<AddNotesCubit>(context);
    var formattedDate = DateFormat.yMd().format(DateTime.now());
    cubit.addNotes(
      Note(
        id: DateTime.now().toString(),
        title: _title,
        content: _content,
        createdAt: formattedDate,
      ),
    );
  }
}