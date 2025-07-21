import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/data/models/note.dart';
import 'package:notes_app/helper/logging.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    try {
      Logging.log('Start fetching notes');
      final box = Hive.box<Note>(kNotesBox);
      List<Note> notes = box.values.toList();
      emit(NotesSuccess(notes: notes));
      Logging.log('Notes fetched successfully, count: ${notes.length}');
    } catch (e) {
      emit(NotesFailer(error: e.toString()));
    }
  }

  deleteNote(Note note) async {
    try {
      final box = Hive.box<Note>(kNotesBox);
      await box.delete(note.key);
      List<Note> notes = box.values.toList();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesFailer(error: e.toString()));
    }
  }

  notesSearch(List<Note> notes, String noteTitle) {
    Logging.log('Start Search');
    List<Note> newNotes = List.empty(growable: true);
    for (var element in notes) {
      if (element.title.contains(noteTitle)) {
        newNotes.add(element);
      }
    }
    Logging.log('Search finished, count: ${newNotes.length}');
    if (noteTitle.isEmpty) {
      fetchNotes();
    } else {
      emit(NotesSuccess(notes: newNotes));
    }
  }
}