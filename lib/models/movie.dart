class Movie {
  final int id;
  final String title;
  final int year;
  final String genre;
  final String synopsis;
  final String poster;

  const Movie({
    required this.id,
    required this.title,
    required this.year,
    required this.genre,
    required this.synopsis,
    required this.poster,
  });
}

// Sample data (minimal 5 film)
final List<Movie> sampleMovies = [
  const Movie(
    id: 1,
    title: '16 wishes',
    year: 2010,
    genre: 'Fantasy, Teen, Comedy, Family',
    synopsis:
        'Film remaja dengan sentuhan fantasi (keinginan yang terkabul secara ajaib).',
    poster: 'assets/images/16 wishes2.jpg',
  ),
  const Movie(
    id: 2,
    title: 'Alvin the chipmunks',
    year: 2007,
    genre: 'Comedy, Family, Musical',
    synopsis:
        'Film keluarga dengan humor ringan, penuh musik, dan animasi live-action.',
    poster: 'assets/images/alvin the chipmunk.jpg',
  ),
  const Movie(
    id: 3,
    title: 'Home Alone',
    year: 1990,
    genre: 'Comedy, Family',
    synopsis:
        'Komedi klasik keluarga dengan bumbu aksi dan slapstick (jebakan kocak Kevin)..',
    poster: 'assets/images/home alone.jpg',
  ),
  const Movie(
    id: 4,
    title: 'Baby day out',
    year: 1994,
    genre: 'Comedy, Family, Adventure',
    synopsis:
        'Bayi kaya kabur dari penculik dan berpetualang keliling kota, bikin penculik kerepotan.',
    poster: 'assets/images/baby day out.jpg',
  ),
  const Movie(
    id: 5,
    title: 'Barbie',
    year: 2023,
    genre: 'Fantasy, Comedy, Adventure',
    synopsis:
        'Barbie yang keluar dari dunia fantasi ke dunia nyata untuk menemukan jati diri.',
    poster: 'assets/images/barbie.jpg',
  ),
  const Movie(
    id: 6,
    title: 'A Man Called Otto',
    year: 2022,
    genre: 'Drama, Comedy',
    synopsis:
        'Pria tua pemarah menemukan kembali arti hidup berkat tetangga barunya.',
    poster: 'assets/images/a_man_called_oto.jpg',
  ),
  const Movie(
    id: 7,
    title: 'The Founder',
    year: 2016,
    genre: 'Biography, Drama',
    synopsis:
        'Kisah Ray Kroc yang menjadikan McDonald’s waralaba cepat saji terbesar.',
    poster: 'assets/images/the founder.jpg',
  ),
];

