import 'package:flutter/material.dart';

import '../../widgets/notes_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const id = '/home_screen';

  @override
  Widget build(BuildContext context) => Scaffold(appBar: NotesAppBar());
}