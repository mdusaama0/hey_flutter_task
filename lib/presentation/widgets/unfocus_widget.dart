import 'package:flutter/material.dart';

class UnFocusWidget extends StatelessWidget {
  final Widget child;

  const UnFocusWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
