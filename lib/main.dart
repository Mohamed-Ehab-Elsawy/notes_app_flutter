import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';

import 'data/models/note.dart';
import 'notes_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initHive();
  runApp(const NotesApp());
}

void _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>(kNotesBox);
}