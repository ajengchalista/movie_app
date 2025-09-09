import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final ValueNotifier<Set<int>> favorites;
  final List<Movie> movies;
  HomePage({super.key, required this.favorites, required this.movies});

  @override
  Widget build(BuildContext context) {
    // Debug print buat cek jumlah data
    print("Jumlah film di HomePage: ${sampleMovies.length}");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Film'),
        actions: [
          ValueListenableBuilder<Set<int>>(
            valueListenable: favorites,
            builder: (context, favs, _) => Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  const Icon(Icons.favorite),
                  const SizedBox(width: 4),
                  Text(favs.length.toString()),
                ],
              ),
            ),
          ),
        ],
      ),

      // ListView untuk menampilkan daftar film
      body: movies.isEmpty
    ? const Center(child: Text("Belum ada data film"))
    : ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: movies.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return _MovieListTile(movie: movie, favorites: favorites);
        },
      ),
    );
  }
}

class _MovieListTile extends StatelessWidget {
  final Movie movie;
  final ValueNotifier<Set<int>> favorites;
  const _MovieListTile({required this.movie, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(movie: movie, favorites: favorites),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poster Film
            SizedBox(
              width: 100,
              height: 140,
              child: Hero(
                tag: 'poster_${movie.id}',
                child: Image.asset(
                  movie.poster,
                  fit: BoxFit.cover,
                  // Kalau asset error, tampilkan placeholder
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, size: 40),
                  ),
                ),
              ),
            ),

            // Detail Film
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      movie.year.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.grey[700]),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            movie.genre,
                            style: Theme.of(context).textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ValueListenableBuilder<Set<int>>(
                          valueListenable: favorites,
                          builder: (context, favs, _) {
                            final isFav = favs.contains(movie.id);
                            return IconButton(
                              onPressed: () {
                                final newSet = Set<int>.from(favs);
                                isFav
                                    ? newSet.remove(movie.id)
                                    : newSet.add(movie.id);
                                favorites.value = newSet;
                              },
                              icon: Icon(
                                isFav
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFav ? Colors.red : null,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
