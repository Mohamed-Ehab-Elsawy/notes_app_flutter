import 'package:flutter/material.dart';

import 'components/single_note_view_body.dart';

class SingleNoteView extends StatelessWidget {
  static const id = '/single_note_screen';

  const SingleNoteView({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: SingleNoteViewBody());
}