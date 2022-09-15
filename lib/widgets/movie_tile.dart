import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/movie_model.dart';
import 'package:moviez_streaming/themes/colors.dart';
import 'package:moviez_streaming/themes/font_weights.dart';

class MovieTile extends StatelessWidget {
  const MovieTile(this.movie, {super.key});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                movie.imageUrl,
                width: 100,
                height: 127,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: TextStyle(
                    fontWeight: medium,
                    fontSize: 20,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  movie.genre,
                  style: const TextStyle(
                    fontSize: 16,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                if (movie.rating == 1)
                  Row(
                    children: const [
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                    ],
                  ),
                if (movie.rating == 2)
                  Row(
                    children: const [
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                    ],
                  ),
                if (movie.rating == 3)
                  Row(
                    children: const [
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                    ],
                  ),
                if (movie.rating == 4)
                  Row(
                    children: const [
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star_border, color: starColor),
                    ],
                  ),
                if (movie.rating == 5)
                  Row(
                    children: const [
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                      Icon(Icons.star, color: starColor),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
