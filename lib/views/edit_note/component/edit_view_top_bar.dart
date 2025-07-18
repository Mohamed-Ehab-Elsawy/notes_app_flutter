import 'package:flutter/material.dart';

import '../../../widgets/custom_icon_button.dart';

class EditViewTopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onCheckPressed;

  const EditViewTopBar({super.key, required this.onCheckPressed});

  @override
  Widget build(BuildContext context) => AppBar(
    title: const Text('Edit Note', style: TextStyle(fontSize: 20)),
    actions: [
      CustomIconButton(icon: Icons.check_rounded, onPressed: onCheckPressed),
    ],
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}