import 'package:flutter/material.dart';
import 'package:task_app_shared/task_app_shared.dart';
import 'package:task_flutter_app/movies/moviesList/moviesListState.dart';

class MovieList extends StatefulWidget {
  MovieList({Key key, this.title, this.movies}) : super(key: key);

  final String title;
  final List<Movie> movies;
//  final String overview;

  @override
  MovieListState createState() => MovieListState();
}