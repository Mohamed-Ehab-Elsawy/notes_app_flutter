import 'package:flutter/material.dart';

class NotesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NotesAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    backgroundColor: Colors.white,
    title: const Text(
      'Notes App',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    ),
  );
}