import 'package:flutter/material.dart';

class ReadingTheme {
  final String id;
  final String name;
  final Color backgroundColor;
  final Color textColor;
  final Color linkColor;

  const ReadingTheme({
    required this.id,
    required this.name,
    required this.backgroundColor,
    required this.textColor,
    required this.linkColor,
  });
}

class ThemeConstants {
  static const ReadingTheme defaultTheme = ReadingTheme(
    id: 'white',
    name: 'White',
    backgroundColor: Color(0xFFFFFFFF),
    textColor: Color(0xFF222222),
    linkColor: Color(0xFF1565C0),
  );

  static const List<ReadingTheme> readingThemes = [
    ReadingTheme(
      id: 'white',
      name: 'White',
      backgroundColor: Color(0xFFFFFFFF),
      textColor: Color(0xFF222222),
      linkColor: Color(0xFF1565C0),
    ),
    ReadingTheme(
      id: 'sepia',
      name: 'Sepia',
      backgroundColor: Color(0xFFF5E6D3),
      textColor: Color(0xFF3E2723),
      linkColor: Color(0xFF5D4037),
    ),
    ReadingTheme(
      id: 'night',
      name: 'Night',
      backgroundColor: Color(0xFF121212),
      textColor: Color(0xFFE0E0E0),
      linkColor: Color(0xFF82B1FF),
    ),
    ReadingTheme(
      id: 'dark_gray',
      name: 'Dark Gray',
      backgroundColor: Color(0xFF2D2D2D),
      textColor: Color(0xFFDDDDDD),
      linkColor: Color(0xFF80DEEA),
    ),
    ReadingTheme(
      id: 'green',
      name: 'Green',
      backgroundColor: Color(0xFFE8F5E9),
      textColor: Color(0xFF1B5E20),
      linkColor: Color(0xFF2E7D32),
    ),
    ReadingTheme(
      id: 'blue',
      name: 'Blue',
      backgroundColor: Color(0xFFE3F2FD),
      textColor: Color(0xFF0D47A1),
      linkColor: Color(0xFF1565C0),
    ),
    ReadingTheme(
      id: 'sand',
      name: 'Sand',
      backgroundColor: Color(0xFFFFF8E1),
      textColor: Color(0xFF4E342E),
      linkColor: Color(0xFF6D4C41),
    ),
    ReadingTheme(
      id: 'gray',
      name: 'Gray',
      backgroundColor: Color(0xFFF5F5F5),
      textColor: Color(0xFF424242),
      linkColor: Color(0xFF1976D2),
    ),
    ReadingTheme(
      id: 'oled',
      name: 'OLED Black',
      backgroundColor: Color(0xFF000000),
      textColor: Color(0xFFFFFFFF),
      linkColor: Color(0xFF80CBC4),
    ),
    ReadingTheme(
      id: 'newspaper',
      name: 'Newspaper',
      backgroundColor: Color(0xFFF0EDE6),
      textColor: Color(0xFF1A1A1A),
      linkColor: Color(0xFF1565C0),
    ),
  ];
}
