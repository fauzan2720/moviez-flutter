import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/movie_model.dart';
import 'package:moviez_streaming/themes/colors.dart';
import 'package:moviez_streaming/themes/font_weights.dart';
import 'package:moviez_streaming/widgets/movie_card.dart';
import 'package:moviez_streaming/widgets/movie_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void searchOnClick() {
      Navigator.pushNamed(context, 'search');
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            // HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 29, 24, 0),
                      child: Text(
                        'Moviez',
                        style: TextStyle(
                          fontWeight: bold,
                          fontSize: 28,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 4, 24, 0),
                      child: Text(
                        'Watch much easier',
                        style: TextStyle(
                          fontSize: 16,
                          color: secondaryTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 49, right: 11),
                  child: GestureDetector(
                    onTap: searchOnClick,
                    child: const Hero(
                      tag: "searchAnimation",
                      child: Icon(
                        Icons.search,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // MOVIE CARD
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 0, 0),
                child: Row(
                  children: allMovieCard
                      .map(
                        (e) => MovieCard(e),
                      )
                      .toList(),
                ),
              ),
            ),

            // MOVIE TILE
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 24, 20),
              child: Text(
                'From Disney',
                style: TextStyle(
                  fontWeight: bold,
                  fontSize: 24,
                  color: primaryTextColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                children: allMovieTile
                    .map(
                      (movie) => MovieTile(movie),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
