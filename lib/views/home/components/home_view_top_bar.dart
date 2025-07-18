import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/search_cubit.dart';
import '../../../cubits/search_state.dart';
import '../../../widgets/custom_icon_button.dart';

class HomeViewTopBar extends StatelessWidget implements PreferredSizeWidget {
  final SearchState state;

  const HomeViewTopBar({super.key, required this.state});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    scrolledUnderElevation: 0,
    title: const Text('Notes', style: TextStyle(fontSize: 20)),
    actions: [
      CustomIconButton(
        icon:
            state == SearchState.showSearch
                ? Icons.close_rounded
                : Icons.search_rounded,
        onPressed: () {
          final cubit = BlocProvider.of<SearchCubit>(context);
          if (state == SearchState.initial || state == SearchState.hideSearch) {
            cubit.showSearch();
          } else if (state == SearchState.showSearch) {
            cubit.hideSearch();
          }
        },
      ),
    ],
  );
}