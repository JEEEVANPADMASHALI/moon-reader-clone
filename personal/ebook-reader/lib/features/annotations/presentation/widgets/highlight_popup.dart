import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/annotations_provider.dart';

class HighlightPopup extends ConsumerStatefulWidget {
  final int bookId;
  final String selectedText;
  final String cfiStart;
  final String? cfiEnd;
  final int pageIndex;

  const HighlightPopup({
    super.key,
    required this.bookId,
    required this.selectedText,
    required this.cfiStart,
    this.cfiEnd,
    required this.pageIndex,
  });

  @override
  ConsumerState<HighlightPopup> createState() => _HighlightPopupState();
}

class _HighlightPopupState extends ConsumerState<HighlightPopup> {
  Color _selectedColor = const Color(0xFFFFEB3B);
  String _type = 'highlight';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Highlight',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            '"${widget.selectedText.length > 100 ? '${widget.selectedText.substring(0, 100)}...' : widget.selectedText}"',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              for (final type in ['highlight', 'underline', 'strikethrough'])
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(_typeLabel(type)),
                    selected: _type == type,
                    onSelected: (_) => setState(() => _type = type),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          BlockPicker(
            pickerColor: _selectedColor,
            onColorChanged: (c) => setState(() => _selectedColor = c),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: _save,
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _typeLabel(String type) => switch (type) {
        'highlight' => 'Highlight',
        'underline' => 'Underline',
        'strikethrough' => 'Strike',
        _ => type,
      };

  Future<void> _save() async {
    final actions = ref.read(annotationActionsProvider);
    await actions.addHighlight(
      bookId: widget.bookId,
      cfiStart: widget.cfiStart,
      cfiEnd: widget.cfiEnd,
      text: widget.selectedText,
      color: _selectedColor.toARGB32(),
      type: _type,
      pageIndex: widget.pageIndex,
    );
    if (mounted) Navigator.of(context).pop();
  }
}
