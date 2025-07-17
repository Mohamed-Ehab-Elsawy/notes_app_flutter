import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/home/components/notes_list.dart';

import '../../../cubits/search_cubit.dart';
import '../../../cubits/search_state.dart';
import '../../../widgets/animated_search_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<SearchCubit, SearchState>(
    builder:
        (context, state) => Column(
          children: [
            AnimatedSearchField(
              isVisible: state == SearchState.showSearch,
              onChanged: (value) {
                BlocProvider.of<SearchCubit>(
                  context,
                ).toggleSearch(noteTitle: value);
              },
            ),
            const Expanded(child: NotesList()),
          ],
        ),
  );
}