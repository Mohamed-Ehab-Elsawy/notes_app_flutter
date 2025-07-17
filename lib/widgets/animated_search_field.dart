import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_text_field.dart';

class AnimatedSearchField extends StatelessWidget {
  final bool isVisible;
  final ValueChanged<String>? onChanged;

  const AnimatedSearchField({
    super.key,
    required this.isVisible,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder:
          (child, animation) => SizeTransition(
            sizeFactor: animation,
            axis: Axis.vertical,
            child: child,
          ),
      child:
          isVisible ? SearchTextField(onChanged: onChanged) : const SizedBox(),
    );
  }
}