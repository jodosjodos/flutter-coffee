import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledBodyButton extends StatelessWidget {
  const StyledBodyButton(
      {super.key, required this.onPressed, required this.child});
  final Widget child;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown[700],
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        child: child);
  }
}
