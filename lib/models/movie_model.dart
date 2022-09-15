import 'package:moviez_streaming/themes/images.dart';

class MovieModel {
  int id;
  String title;
  String genre;
  int rating;
  String imageUrl;

  MovieModel({
    required this.id,
    required this.title,
    required this.genre,
    required this.rating,
    required this.imageUrl,
  });
}

var allMovieCard = [
  MovieModel(
    id: 1,
    title: 'John Wick 4',
    genre: 'Action, Crime',
    rating: 5,
    imageUrl: imgCard1,
  ),
  MovieModel(
    id: 2,
    title: 'Bohemian',
    genre: 'Documentary',
    rating: 3,
    imageUrl: imgCard2,
  ),
];

var allMovieTile = [
  MovieModel(
    id: 1,
    title: 'Mulan Session',
    genre: 'History, War',
    rating: 3,
    imageUrl: movie1,
  ),
  MovieModel(
    id: 2,
    title: 'Beauty & Beast',
    genre: 'Sci-Fiction',
    rating: 5,
    imageUrl: movie2,
  ),
  MovieModel(
    id: 3,
    title: 'The Dark II',
    genre: 'Horror',
    rating: 4,
    imageUrl: movie3,
  ),
  MovieModel(
    id: 4,
    title: 'The Dark Knight',
    genre: 'Heroes',
    rating: 5,
    imageUrl: movie4,
  ),
  MovieModel(
    id: 5,
    title: 'The Dark Tower',
    genre: 'Action',
    rating: 4,
    imageUrl: movie5,
  ),
];
