import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/views/home/components/notes_list.dart';

class NotesListBuilder extends StatelessWidget {
  const NotesListBuilder({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<NotesCubit, NotesState>(
    builder: (context, state) {
      if (state is NotesSuccess) {
        if (state.notes.isEmpty) {
          return const NoNotesView();
        } else {
          return NotesList(notes: state.notes);
        }
      } else if (state is NotesFailer) {
        return Center(child: Text(state.error));
      } else {
        return const Center(
          child: CircularProgressIndicator(color: Colors.white),
        );
      }
    },
  );
}

class NoNotesView extends StatelessWidget {
  const NoNotesView({super.key});

  @override
  Widget build(BuildContext context) => const Center(
    child: Text(
      'No notes found',
      style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.w500),
    ),
  );
}