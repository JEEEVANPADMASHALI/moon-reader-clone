import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../domain/entities/book.dart';

class BookGridItem extends StatelessWidget {
  final Book book;
  const BookGridItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        RouteNames.reader,
        pathParameters: {'id': '${book.id}'},
      ),
      onLongPress: () => context.pushNamed(
        RouteNames.bookDetail,
        pathParameters: {'id': '${book.id}'},
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _CoverImage(coverPath: book.coverPath, title: book.title),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black87, Colors.transparent],
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                    if (book.author.isNotEmpty && book.author != 'Unknown')
                      Text(
                        book.author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 10),
                      ),
                  ],
                ),
              ),
            ),
            if (book.readingProgress > 0)
              Positioned(
                top: 4,
                right: 4,
                child: _ProgressRing(progress: book.readingProgress),
              ),
          ],
        ),
      ),
    );
  }
}

class _CoverImage extends StatelessWidget {
  final String? coverPath;
  final String title;
  const _CoverImage({this.coverPath, required this.title});

  @override
  Widget build(BuildContext context) {
    if (coverPath != null && File(coverPath!).existsSync()) {
      return Image.file(File(coverPath!), fit: BoxFit.cover);
    }
    return Container(
      color: _colorFromTitle(title),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
      ),
    );
  }

  Color _colorFromTitle(String t) {
    final colors = [
      const Color(0xFF1565C0), const Color(0xFF6A1B9A),
      const Color(0xFF2E7D32), const Color(0xFFE65100),
      const Color(0xFF37474F), const Color(0xFFC62828),
    ];
    return colors[t.hashCode.abs() % colors.length];
  }
}

class _ProgressRing extends StatelessWidget {
  final double progress;
  const _ProgressRing({required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 28,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress,
            strokeWidth: 3,
            backgroundColor: Colors.white24,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text(
            '${(progress * 100).round()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
