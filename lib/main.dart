import 'package:flutter/material.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color.fromARGB(255, 218, 218, 218),
      ),
      home: MovieListPage(),
    );
  }
}

class Movie {
  final String title;
  final String year;
  final String genre;
  final String synopsis;
  final String actor; 
  final String imagePath;

  Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.synopsis,
    required this.actor,
    required this.imagePath,
  });
}

class MovieListPage extends StatefulWidget {
  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final List<Movie> movies = [
    Movie(
      title: "Home Alone",
      year: "1990",
      genre: "Comedy, Family, Holiday",
      synopsis:
          "Film ini menceritakan Kevin McCallister, seorang bocah berusia 8 tahun dari keluarga besar McCallister yang tinggal di Chicago. "
          "Menjelang liburan Natal, keluarganya bersiap untuk pergi berlibur ke Paris. "
          "Malam sebelum keberangkatan, Kevin bertengkar dengan kakaknya Buzz dan dimarahi ibunya. Ia dengan kesal berharap seluruh keluarganya 'menghilang'. "
          "Keesokan harinya, akibat listrik padam dan alarm tidak berbunyi, keluarga McCallister bangun terlambat. "
          "Dalam kekacauan keberangkatan, Kevin secara tidak sengaja tertinggal di rumah. "
          "Awalnya Kevin merasa senang karena bisa hidup bebas tanpa aturan—makan junk food, menonton film dewasa, dan melakukan apa saja. "
          "Namun, kesenangan itu berubah jadi tantangan ketika dua pencuri konyol, Harry dan Marv (dikenal sebagai Wet Bandits), berencana merampok rumah McCallister. "
          "Kevin yang cerdas kemudian menyusun berbagai jebakan rumahan kreatif dan lucu. "
          "Sementara itu, ibu Kevin, Kate McCallister, berjuang keras untuk kembali ke Chicago demi anaknya. "
          "Akhirnya, Kevin berhasil mempertahankan rumahnya hingga polisi datang menangkap Harry dan Marv. "
          "Pada hari Natal, keluarganya kembali dan Kevin belajar arti pentingnya keluarga.",
      actor: "Macaulay Culkin, Joe Pesci, Daniel Stern, Catherine O'Hara",
      imagePath: "assets/images/home alone.jpg",
    ),
    Movie(
      title: "Barbie",
      year: "2023",
      genre: "Adventure, Fantasy, Comedy",
      synopsis:
          "Film Barbie menceritakan tentang kehidupan para Barbie di Barbie Land dengan keunikan karakternya masing-masing. "
          "Di tempat tersebut, para perempuan dipanggil Barbie sedangkan laki-laki dipanggil Ken. "
          "Barbie dengan peran utama Margot Robbie dan Ken dengan peran utama Ryan Gosling menjalani kehidupan di Barbie Land dengan penuh kebahagiaan dan berwarna hingga tampak sempurna. "
          "Namun pada suatu hari, kaki Barbie berubah menjadi datar sehingga tidak lagi berjinjit."
          "Ia pun diusir dari Barbie Land lantaran dianggap tidak normal. "
          "Bersama Ken, Barbie pergi ke dunia nyata dan memulai petualangan baru.",
      actor: "Margot Robbie, Ryan Gosling, Will Ferrell",
      imagePath: "assets/images/barbie.jpg",
    ),
    Movie(
      title: "Baby's Day Out",
      year: "1994",
      genre: "Comedy, Family, Adventure",
      synopsis:
          "film komedi keluarga Amerika yang dirilis pada tahun 1994, disutradarai oleh Patrick Read Johnson dan ditulis oleh John Hughes."
          "Film ini menceritakan kisah seorang bayi bernama Baby Bink yang hidup dalam keluarga kaya raya. Suatu hari, tiga penjahat yang menyamar sebagai fotografer menculik Baby Bink dengan tujuan meminta tebusan."
          "Namun, rencana mereka menjadi kacau ketika bayi tersebut secara tidak sengaja lolos dari genggaman mereka."
          "Tanpa disadari para penculik, Baby Bink justru memulai petualangan seru di kota besar."
          "Ia menaiki bus, masuk ke kebun binatang, memanjat gedung, hingga jalan-jalan melewati berbagai tempat berbahaya."
          "Anehnya, meskipun masih bayi, ia selalu selamat berkat kepolosan dan keberuntungan yang lucu."
          "Sementara itu, para penculik terus berusaha menangkapnya, namun selalu gagal dan malah terkena celaka sendiri."
          "Film ini dipenuhi dengan adegan slapstick kocak, penuh tawa, sekaligus menegangkan."
          "Akhirnya, Baby Bink berhasil kembali ke rumahnya dengan selamat, dan para penculik mendapatkan balasan atas perbuatan mereka."
          "Baby’s Day Out menjadi salah satu film komedi keluarga legendaris yang banyak dikenang karena kelucuan dan kesederhanaan ceritanya, cocok ditonton oleh segala usia.",
      actor: "Joe Mantegna, Lara Flynn Boyle, Joe Pantoliano",
      imagePath: "assets/images/baby day out.jpg",
    ),
    Movie(
      title: "A Man Called Otto",
      year: "2022",
      genre: "Drama, Comedy",
      synopsis:
          "Film ini bercerita tentang Otto Anderson (Tom Hanks), seorang pria tua pemurung, keras kepala, perfeksionis, dan kaku dalam aturan."
          "Ia baru saja kehilangan istrinya, Sonya, yang merupakan cinta sejatinya. Sejak kematian Sonya, Otto merasa hidupnya hampa dan tidak lagi berarti."
          "Karena kesepian, Otto sering berniat bunuh diri. Namun, setiap kali ia mencoba, selalu ada gangguan tak terduga dari lingkungan sekitarnya."
          "Hidupnya mulai berubah ketika tetangga baru pindah ke seberang rumah: Marisol, seorang wanita Meksiko-Amerika yang ceria, bersama keluarganya. Dengan sikap hangat dan ketegasannya, Marisol perlahan “membobol” dinding keras Otto.",
      actor: "Tom Hanks, Mariana Treviño, Rachel Keller",
      imagePath: "assets/images/a man called oto.jpg",
    ),
    Movie(
      title: "The Founder",
      year: "2016",
      genre: "Biography, Drama",
      synopsis:
          "Menceritakan kisah nyata Ray Kroc, seorang salesman mesin milkshake yang menemukan restoran kecil milik Richard dan Maurice McDonald. "
          "Dengan ambisi besar, Ray mengubah restoran itu menjadi McDonald’s, salah satu jaringan makanan cepat saji terbesar di dunia. "
          "Film ini menggambarkan ambisi, persaingan, dan kontroversi bisnis global.",
      actor: "Michael Keaton, Nick Offerman, John Carroll Lynch",
      imagePath: "assets/images/the founder.jpg",
    ),
    Movie(
      title: "Alvin and the Chipmunks",
      year: "2007",
      genre: "Comedy, Family, Musical, Animation",
      synopsis:
          "Tiga tupai bernama Alvin, Simon, dan Theodore menemukan jalan menuju dunia manusia. "
          "Mereka bertemu dengan Dave Seville, seorang musisi yang kemudian menjadi figur ayah bagi mereka. "
          "Dengan suara unik dan kemampuan bernyanyi mereka, ketiganya menjadi sensasi musik.",
      actor: "Jason Lee, David Cross, Cameron Richardson",
      imagePath: "assets/images/alvin the chipmunk.jpg",
    ),
    Movie(
      title: "16 Wishes",
      year: "2010",
      genre: "Fantasy, Family, Comedy",
      synopsis:
          "Film ini bercerita tentang Abby Jensen, seorang remaja yang berulang tahun ke-16. "
          "Ia memiliki daftar 16 keinginan yang ingin segera terwujud. "
          "Secara ajaib, seorang peri membantunya mewujudkan semua keinginan itu. "
          "Namun, Abby menyadari bahwa tidak semua keinginan membawa kebahagiaan.",
      actor: "Debby Ryan, Jean-Luc Bilodeau, Anna Mae Routledge",
      imagePath: "assets/images/16 wishes.jpg",
    ),
  ];

  final Set<Movie> favorites = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Favorite Apps"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FavoritePage(favorites: favorites.toList()),
                ),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          final isFav = favorites.contains(movie);
          return Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  movie.imagePath,
                  width: 60,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(movie.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              subtitle: Text("Tahun: ${movie.year}"),
              trailing: IconButton(
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    isFav ? favorites.remove(movie) : favorites.add(movie);
                  });
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MovieDetailPage(
                      movie: movie,
                      isFavorite: isFav,
                      onFavoriteToggle: () {
                        setState(() {
                          isFav
                              ? favorites.remove(movie)
                              : favorites.add(movie);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class MovieDetailPage extends StatelessWidget {
  final Movie movie;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const MovieDetailPage({
    super.key,
    required this.movie,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: onFavoriteToggle,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  movie.imagePath,
                  width: 250,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              movie.title,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("Tahun: ${movie.year}",
                style: const TextStyle(color: Colors.black54)),
            const SizedBox(height: 5),
            Text("Genre: ${movie.genre}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            Text("Aktor: ${movie.actor}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 15),
            Text(
              "Sinopsis:",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(movie.synopsis, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  final List<Movie> favorites;
  const FavoritePage({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorite Movies")),
      body: favorites.isEmpty
          ? const Center(child: Text("Belum ada film favorit."))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final movie = favorites[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(
                      movie.imagePath,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(movie.title),
                    subtitle: Text("Tahun: ${movie.year}"),
                  ),
                );
              },
            ),
    );
  }
}
