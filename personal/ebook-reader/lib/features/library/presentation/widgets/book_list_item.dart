import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../domain/entities/book.dart';

class BookListItem extends StatelessWidget {
  final Book book;
  const BookListItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: SizedBox(
        width: 44,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: book.coverPath != null && File(book.coverPath!).existsSync()
              ? Image.file(File(book.coverPath!), fit: BoxFit.cover)
              : Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: const Icon(Icons.menu_book),
                ),
        ),
      ),
      title: Text(book.title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(book.author,
              maxLines: 1, overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 2),
          LinearProgressIndicator(
            value: book.readingProgress,
            minHeight: 3,
          ),
        ],
      ),
      trailing: Text(
        '${(book.readingProgress * 100).toStringAsFixed(0)}%',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: () => context.goNamed(
        RouteNames.reader,
        pathParameters: {'id': '${book.id}'},
      ),
      onLongPress: () => context.goNamed(
        RouteNames.bookDetail,
        pathParameters: {'id': '${book.id}'},
      ),
    );
  }
}
