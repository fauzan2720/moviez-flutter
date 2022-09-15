import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/movie_model.dart';
import 'package:moviez_streaming/themes/colors.dart';
import 'package:moviez_streaming/themes/font_weights.dart';
import 'package:moviez_streaming/widgets/movie_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // SEARCH INPUT
          Container(
            height: 45,
            margin: const EdgeInsets.fromLTRB(24, 38, 24, 0),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                const Hero(
                  tag: "searchAnimation",
                  child: Icon(
                    Icons.search,
                    size: 22,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Temukan film favoritmu',
                    ),
                  ),
                ),
              ],
            ),
          ),

          // SEARCH RESULT
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 35, 24, 20),
            child: Text(
              'Search Result (5)',
              style: TextStyle(
                fontWeight: bold,
                fontSize: 20,
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

          // BUTTON
          Container(
            margin: const EdgeInsets.fromLTRB(78, 43, 78, 30),
            height: 50,
            decoration: BoxDecoration(
              color: primaryTextColor,
              borderRadius: BorderRadius.circular(37),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffC4C8D7),
                  blurRadius: 4,
                  offset: Offset(0, 8),
                )
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Suggest Movie",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
