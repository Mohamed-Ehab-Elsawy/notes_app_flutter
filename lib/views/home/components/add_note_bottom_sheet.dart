import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_elevated_button.dart';

import '../../../widgets/note_content_text_field.dart';
import '../../../widgets/note_title_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Form(
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
                NoteTitleTextField(hintText: 'Title', onChange: (value) {}),
                SizedBox(height: 30),
                NoteContentTextField(hintText: 'Content', onChange: (value) {}),
                SizedBox(height: 30),
                CustomElevatedButton(buttonTitle: 'Add Note', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}