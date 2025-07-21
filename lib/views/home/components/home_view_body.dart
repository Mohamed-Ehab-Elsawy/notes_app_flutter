import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_search/notes_search_cubit.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/views/home/components/notes_list_builder.dart';

import '../../../widgets/animated_search_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchNotes();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<NotesSearchCubit, NotesSearchState>(
        builder:
            (context, state) => Column(
              children: [
                AnimatedSearchField(
                  isVisible: state is NotesSearchShow,
                  onChanged: (value) {
                    var notesState =
                        BlocProvider.of<NotesCubit>(context).state
                            as NotesSuccess;
                    BlocProvider.of<NotesCubit>(
                      context,
                    ).notesSearch(notesState.notes, value);
                  },
                ),
                const Expanded(child: NotesListBuilder()),
              ],
            ),
      );
}