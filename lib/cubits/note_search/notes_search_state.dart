part of 'notes_search_cubit.dart';

@immutable
sealed class NotesSearchState {}

final class NotesSearchShow extends NotesSearchState {}

final class NotesSearchHide extends NotesSearchState {}