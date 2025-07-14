import 'package:flutter/material.dart';
import 'package:notes_app/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {HomeScreen.id: (context) => const HomeScreen()},
    initialRoute: HomeScreen.id,
  );
}