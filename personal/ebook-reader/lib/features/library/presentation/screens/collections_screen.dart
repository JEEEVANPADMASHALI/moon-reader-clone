import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/library_provider.dart';
import '../../data/repositories/book_repository_impl.dart';

class CollectionsScreen extends ConsumerWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionsAsync = ref.watch(collectionsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createCollection(context, ref),
        child: const Icon(Icons.add),
      ),
      body: collectionsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (collections) {
          if (collections.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.collections_bookmark, size: 64),
                  SizedBox(height: 12),
                  Text('No collections yet'),
                  Text('Create a collection to organize your books'),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: collections.length,
            itemBuilder: (ctx, i) {
              final c = collections[i];
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.collections)),
                title: Text(c.name),
                subtitle: c.description != null ? Text(c.description!) : null,
                trailing: const Icon(Icons.chevron_right),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _createCollection(BuildContext context, WidgetRef ref) async {
    final nameCtrl = TextEditingController();
    final name = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('New Collection'),
        content: TextField(
          controller: nameCtrl,
          autofocus: true,
          decoration: const InputDecoration(labelText: 'Collection name'),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, nameCtrl.text.trim()),
              child: const Text('Create')),
        ],
      ),
    );
    if (name != null && name.isNotEmpty) {
      await ref.read(bookRepositoryProvider).createCollection(name);
      ref.invalidate(collectionsProvider);
    }
  }
}
