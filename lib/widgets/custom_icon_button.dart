import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.center,
    height: 40,
    width: 40,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(10),
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white, size: 26),
    ),
  );
}