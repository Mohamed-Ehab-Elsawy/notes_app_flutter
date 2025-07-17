import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/search_cubit.dart';
import '../cubits/search_state.dart';

class SearchIconButton extends StatelessWidget {
  final SearchState state;

  const SearchIconButton({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Container(
    height: 40,
    width: 40,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(10),
    ),
    child: IconButton(
      onPressed: () {
        final cubit = BlocProvider.of<SearchCubit>(context);
        if (state == SearchState.initial || state == SearchState.hideSearch) {
          cubit.showSearch();
        } else if (state == SearchState.showSearch) {
          cubit.hideSearch();
        }
      },
      icon: const Icon(Icons.search_rounded, color: Colors.white, size: 26),
    ),
  );
}