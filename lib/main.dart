import 'package:movie_app/main.dart';
import 'package:flutter/material.dart';
import 'models/movie.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final ValueNotifier<Set<int>> favorites = ValueNotifier<Set<int>>({});

  @override
  void dispose() {
    favorites.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daftar Film',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 131, 212)),
        useMaterial3: true,
      ),
      home: HomePage(favorites: favorites, movies: sampleMovies),
    );
  }
}
