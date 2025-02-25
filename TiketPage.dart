import 'package:flutter/material.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Menghapus ikon default back
          title: const Text(
            "Film Bioskop",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "SEDANG TAYANG"),
              Tab(text: "AKAN DATANG"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab "Sedang Tayang"
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 movie cards per row
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.7, // Adjust the aspect ratio as needed
                ),
                itemCount: 8, // Total number of movies
                itemBuilder: (context, index) {
                  // Data for each movie
                  final movies = [
                    {
                      "movieTitle": "Santet  Segoro Pitu",
                      "genre": "Dramatis, Horror",
                      "ageRating": "R 17+",
                      "rating": "9.2",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Gladiator 2",
                      "genre": "Action, Survival",
                      "ageRating": "D 17+",
                      "rating": "9.0",
                      "imageUrl": "Assets/Tiket1.png"
                    },
                    {
                      "movieTitle": "Red One",
                      "genre": "Action, Adventure",
                      "ageRating": "D 17+",
                      "rating": "9.5",
                      "imageUrl": "Assets/Tiket2.png"
                    },
                    {
                      "movieTitle": "Red One",
                      "genre": "Action, Adventure",
                      "ageRating": "R 13+",
                      "rating": "9.3",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Bila Esok Ibu Tiada",
                      "genre": "Drama, Keluarga",
                      "ageRating": "R 13+",
                      "rating": "9.2",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Santet Segoro Pitu",
                      "genre": "Horror",
                      "ageRating": "D 17+",
                      "rating": "9.0",
                      "imageUrl": "Assets/Tiket1.png"
                    },
                    {
                      "movieTitle": "Gladiator II",
                      "genre": "Action, Adventure",
                      "ageRating": "D 17+",
                      "rating": "9.5",
                      "imageUrl": "Assets/Tiket2.png"
                    },
                    {
                      "movieTitle": "Red One",
                      "genre": "Action, Adventure",
                      "ageRating": "R 13+",
                      "rating": "9.3",
                      "imageUrl": "Assets/Tiket.png"
                    },
                  ];

                  final movie = movies[index];
                  return MovieCard(
                    movieTitle: movie["movieTitle"]!,
                    genre: movie["genre"]!,
                    ageRating: movie["ageRating"]!,
                    rating: movie["rating"]!,
                    imageUrl: movie["imageUrl"]!,
                  );
                },
              ),
            ),
            // Tab "Akan Datang"
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 movie cards per row
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.7, // Adjust the aspect ratio as needed
                ),
                itemCount: 8, // Total number of movies
                itemBuilder: (context, index) {
                  // Data for each movie
                  final movies = [
                    {
                      "movieTitle": "Bila Esok Ibu Tiada",
                      "genre": "Drama, Keluarga",
                      "ageRating": "R 13+",
                      "rating": "9.2",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Santet Segoro Pitu",
                      "genre": "Horror",
                      "ageRating": "D 17+",
                      "rating": "9.0",
                      "imageUrl": "Assets/Tiket1.png"
                    },
                    {
                      "movieTitle": "Gladiator II",
                      "genre": "Action, Adventure",
                      "ageRating": "D 17+",
                      "rating": "9.5",
                      "imageUrl": "Assets/Tiket2.png"
                    },
                    {
                      "movieTitle": "Red One",
                      "genre": "Action, Adventure",
                      "ageRating": "R 13+",
                      "rating": "9.3",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Bila Esok Ibu Tiada",
                      "genre": "Drama, Keluarga",
                      "ageRating": "R 13+",
                      "rating": "9.2",
                      "imageUrl": "Assets/Tiket.png"
                    },
                    {
                      "movieTitle": "Santet Segoro Pitu",
                      "genre": "Horror",
                      "ageRating": "D 17+",
                      "rating": "9.0",
                      "imageUrl": "Assets/Tiket1.png"
                    },
                    {
                      "movieTitle": "Gladiator II",
                      "genre": "Action, Adventure",
                      "ageRating": "D 17+",
                      "rating": "9.5",
                      "imageUrl": "Assets/Tiket2.png"
                    },
                    {
                      "movieTitle": "Red One",
                      "genre": "Action, Adventure",
                      "ageRating": "R 13+",
                      "rating": "9.5",
                      "imageUrl": "Assets/Tiket.png"
                    },
                  ];

                  final movie = movies[index];
                  return MovieCard(
                    movieTitle: movie["movieTitle"]!,
                    genre: movie["genre"]!,
                    ageRating: movie["ageRating"]!,
                    rating: movie["rating"]!,
                    imageUrl: movie["imageUrl"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String movieTitle;
  final String genre;
  final String ageRating;
  final String rating;
  final String imageUrl;

  const MovieCard({
    Key? key,
    required this.movieTitle,
    required this.genre,
    required this.ageRating,
    required this.rating,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Film
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imageUrl,
              height: 180, // Tinggi poster
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Film
                Text(
                  movieTitle.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Genre dan Rating
                Row(
                  children: [
                    // Rating Usia
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        ageRating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Genre
                    Text(
                      genre,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                // Skor Bintang
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
