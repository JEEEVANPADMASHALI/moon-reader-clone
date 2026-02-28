import 'package:flutter/material.dart';
import '../../domain/entities/reading_settings.dart';

class ReaderGestureDetector extends StatelessWidget {
  final ReadingSettings settings;
  final VoidCallback? onNextPage;
  final VoidCallback? onPrevPage;
  final VoidCallback? onToggleOverlay;
  final Widget child;

  const ReaderGestureDetector({
    super.key,
    required this.settings,
    required this.child,
    this.onNextPage,
    this.onPrevPage,
    this.onToggleOverlay,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) => _handleTap(context, details.localPosition),
      child: child,
    );
  }

  void _handleTap(BuildContext context, Offset position) {
    final size = MediaQuery.of(context).size;
    final x = position.dx / size.width;
    final y = position.dy / size.height;

    final action = _getAction(x, y);
    _executeAction(action);
  }

  TapAction _getAction(double x, double y) {
    final col = x < 0.33 ? 0 : (x < 0.66 ? 1 : 2);
    final row = y < 0.33 ? 0 : (y < 0.66 ? 1 : 2);

    // Map (row, col) → action
    return switch ((row, col)) {
      (0, 0) => settings.tapTopLeft,
      (0, 1) => settings.tapTopCenter,
      (0, 2) => settings.tapTopRight,
      (1, 0) => settings.tapMiddleLeft,
      (1, 1) => settings.tapMiddleCenter,
      (1, 2) => settings.tapMiddleRight,
      (2, 0) => settings.tapBottomLeft,
      (2, 1) => settings.tapBottomCenter,
      (2, 2) => settings.tapBottomRight,
      _ => TapAction.none,
    };
  }

  void _executeAction(TapAction action) {
    switch (action) {
      case TapAction.nextPage:
        onNextPage?.call();
      case TapAction.prevPage:
        onPrevPage?.call();
      case TapAction.toggleOverlay:
        onToggleOverlay?.call();
      default:
        break;
    }
  }
}
