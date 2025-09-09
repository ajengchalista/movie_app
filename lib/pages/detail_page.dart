import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;
  final ValueNotifier<Set<int>> favorites;
  const DetailPage({super.key, required this.movie, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        actions: [
          ValueListenableBuilder<Set<int>>(
            valueListenable: favorites,
            builder: (context, favs, _) {
              final isFav = favs.contains(movie.id);
              return IconButton(
                onPressed: () {
                  final newSet = Set<int>.from(favs);
                  isFav ? newSet.remove(movie.id) : newSet.add(movie.id);
                  favorites.value = newSet;
                },
                icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'poster_${movie.id}',
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Image.asset(movie.poster, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 12,
                    children: [
                      _Chip(icon: Icons.calendar_today, label: movie.year.toString()),
                      _Chip(icon: Icons.category, label: movie.genre),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text('Sinopsis',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          )),
                  const SizedBox(height: 8),
                  Text(movie.synopsis,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 24),
                  ValueListenableBuilder<Set<int>>(
                    valueListenable: favorites,
                    builder: (context, favs, _) {
                      final isFav = favs.contains(movie.id);
                      return FilledButton.icon(
                        onPressed: () {
                          final newSet = Set<int>.from(favs);
                          isFav ? newSet.remove(movie.id) : newSet.add(movie.id);
                          favorites.value = newSet;
                        },
                        icon: Icon(isFav ? Icons.check : Icons.favorite_border),
                        label: Text(isFav ? 'Sudah di Favorit' : 'Tambah ke Favorit'),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _Chip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16),
          const SizedBox(width: 6),
          Text(label),
        ],
      ),
    );
  }
}
