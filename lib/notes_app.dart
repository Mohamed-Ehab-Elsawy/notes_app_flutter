import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubit.dart';
import 'package:notes_app/cubits/home_view/home_view_cubit.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';
import 'package:notes_app/views/home/home_view.dart';
import 'package:notes_app/views/single_note/single_note_view.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SearchCubit()),
      BlocProvider(create: (context) => NotesCubit()),
      BlocProvider(create: (context) => AddNotesCubit()),
    ],
    child: MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        SingleNoteView.id: (context) => const SingleNoteView(),
        EditNoteView.id: (context) => EditNoteView(),
      },
      initialRoute: HomeView.id,
    ),
  );
}