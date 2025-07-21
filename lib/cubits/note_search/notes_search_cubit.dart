import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'notes_search_state.dart';

class NotesSearchCubit extends Cubit<NotesSearchState> {
  NotesSearchCubit() : super(NotesSearchHide());

  showSearch() => emit(NotesSearchShow());

  hideSearch() => emit(NotesSearchHide());
}