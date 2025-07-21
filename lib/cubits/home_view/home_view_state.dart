part of 'home_view_cubit.dart';

@immutable
sealed class SearchState {}

final class ShowSearch extends SearchState {}

final class HideSearch extends SearchState {}