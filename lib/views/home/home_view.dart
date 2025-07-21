import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_search/notes_search_cubit.dart';
import 'package:notes_app/views/home/components/add_note_bottom_sheet.dart';

import '../../widgets/circular_fab.dart';
import 'components/home_view_body.dart';
import 'components/home_view_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const id = '/home_screen';

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<NotesSearchCubit, NotesSearchState>(
        builder:
            (context, state) => Scaffold(
              appBar: HomeViewTopBar(state: state),
              body: HomeViewBody(),
              floatingActionButton: CircularFAB(
                onPressed: () {
                  _showAddNoteBottomSheet(context);
                },
              ),
            ),
      );

  _showAddNoteBottomSheet([context]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => AddNoteBottomSheet(),
    );
  }
}