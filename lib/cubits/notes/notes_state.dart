part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  NotesSuccess({required this.notes});

  final List<Note> notes;
}

final class NotesFailer extends NotesState {
  NotesFailer({required this.error});

  final String error;
}