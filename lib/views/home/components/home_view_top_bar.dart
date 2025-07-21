import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_search/notes_search_cubit.dart';

import '../../../cubits/notes/notes_cubit.dart';
import '../../../widgets/custom_icon_button.dart';

class HomeViewTopBar extends StatelessWidget implements PreferredSizeWidget {
  final NotesSearchState state;

  const HomeViewTopBar({super.key, required this.state});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    scrolledUnderElevation: 0,
    title: const Text('Notes', style: TextStyle(fontSize: 20)),
    actions: [
      CustomIconButton(
        icon:
            state is NotesSearchShow
                ? Icons.close_rounded
                : Icons.search_rounded,
        onPressed: () {
          final cubit = BlocProvider.of<NotesSearchCubit>(context);
          if (state is NotesSearchShow) {
            cubit.hideSearch();
            BlocProvider.of<NotesCubit>(context).fetchNotes();
          } else {
            cubit.showSearch();
          }
        },
      ),
    ],
  );
}