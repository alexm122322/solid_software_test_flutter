import 'package:flutter/cupertino.dart';

/// [StatelessWidget] for handling press event.
class OnPressedWidget extends StatelessWidget {
  /// Callback when user tapped by the [child].
  final VoidCallback? onPressed;

  /// The child of [OnPressedWidget].
  final Widget child;

  /// Create instance of [OnPressedWidget].
  const OnPressedWidget({
    required this.child,
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: child,
    );
  }
}
