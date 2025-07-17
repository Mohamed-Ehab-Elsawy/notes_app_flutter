import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/search_state.dart';
import 'package:notes_app/data/models/note.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.initial);

  List<Note>? notes;

  showSearch() => emit(SearchState.showSearch);

  hideSearch() => emit(SearchState.hideSearch);

  toggleSearch({required String noteTitle}) {
    emit(SearchState.toggleSearch);
    // GET NOTES
  }
}