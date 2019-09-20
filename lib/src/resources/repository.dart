import 'dart:async';
import 'package:shopping_cart/src/resources/movie_api_provider.dart';
import 'package:shopping_cart/src/models/product_model.dart';

class Repository {
  // central point from where data will flow into the bloc
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
