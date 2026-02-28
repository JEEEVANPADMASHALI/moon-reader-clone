import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';
import '../providers/reading_settings_provider.dart';

class BrightnessSlider extends ConsumerStatefulWidget {
  const BrightnessSlider({super.key});

  @override
  ConsumerState<BrightnessSlider> createState() => _BrightnessSliderState();
}

class _BrightnessSliderState extends ConsumerState<BrightnessSlider> {
  bool _dragging = false;
  double _value = 0.7;

  @override
  void initState() {
    super.initState();
    _value = ref.read(readingSettingsProvider).brightness;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (_) => setState(() => _dragging = true),
      onVerticalDragEnd: (_) => setState(() => _dragging = false),
      onVerticalDragUpdate: (details) {
        final dy = -details.delta.dy / (MediaQuery.of(context).size.height * 0.8);
        final newVal = (_value + dy).clamp(0.1, 1.0);
        setState(() => _value = newVal);
        ScreenBrightness().setScreenBrightness(newVal);
        ref.read(readingSettingsProvider.notifier).setBrightness(newVal);
      },
      child: AnimatedOpacity(
        opacity: _dragging ? 1.0 : 0.3,
        duration: const Duration(milliseconds: 200),
        child: Container(
          width: 24,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.brightness_high, color: Colors.white, size: 16),
              Expanded(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 4,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                    ),
                    child: Slider(
                      value: _value,
                      min: 0.1,
                      max: 1.0,
                      onChanged: (v) {
                        setState(() => _value = v);
                        ScreenBrightness().setScreenBrightness(v);
                        ref.read(readingSettingsProvider.notifier).setBrightness(v);
                      },
                    ),
                  ),
                ),
              ),
              const Icon(Icons.brightness_low, color: Colors.white, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
