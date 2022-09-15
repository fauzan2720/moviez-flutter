import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/movie_model.dart';
import 'package:moviez_streaming/themes/colors.dart';
import 'package:moviez_streaming/themes/font_weights.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(this.movie, {Key? key}) : super(key: key);
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                movie.imageUrl,
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: primaryTextColor,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        movie.genre,
                        style: const TextStyle(
                          fontSize: 16,
                          color: secondaryTextColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
