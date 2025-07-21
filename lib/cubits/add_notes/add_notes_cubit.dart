import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/data/models/note.dart';

import '../../constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(Note note) async {
    emit(AddNotesLoading());
    try {
      final box = Hive.box<Note>(kNotesBox);
      await box.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailer(error: e.toString()));
    }
  }
}