import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/data/models/note.dart';

part 'home_view_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(HideSearch());

  showSearch() => emit(ShowSearch());

  hideSearch() => emit(HideSearch());
}