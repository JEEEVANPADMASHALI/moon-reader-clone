import 'package:flutter/material.dart';

/// Amber overlay that simulates a blue-light filter (night mode).
/// [opacity] is 0.0 (off) to 0.95 (very warm).
class BlueLightFilter extends StatelessWidget {
  final double opacity;
  const BlueLightFilter({super.key, required this.opacity});

  @override
  Widget build(BuildContext context) {
    if (opacity <= 0) return const SizedBox.shrink();
    return IgnorePointer(
      child: Container(
        color: Color.fromARGB(
          (255 * opacity * 0.5).round().clamp(0, 255),
          255,
          109,
          0,
        ),
      ),
    );
  }
}
