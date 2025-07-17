import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon_button.dart';

import '../../../cubits/search_state.dart';

class HomeViewTopBar extends StatelessWidget implements PreferredSizeWidget {
  final SearchState state;

  const HomeViewTopBar({super.key, required this.state});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    scrolledUnderElevation: 0,
    title: const Text('Notes', style: TextStyle(fontSize: 20)),
    actions: [SearchIconButton(state: state)],
  );
}