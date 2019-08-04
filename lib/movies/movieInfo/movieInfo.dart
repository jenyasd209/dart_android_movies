import 'package:flutter/material.dart';
import 'package:task_flutter_app/movies/movieInfo/movieState.dart';

class MovieInfo extends StatefulWidget {
  MovieInfo(this.filmId, {Key key, this.title, this.posterPath, this.overview}) : super(key: key);

  final int filmId;
  final String title;
  final String posterPath;
  final String overview;

  @override
  MovieState createState() => MovieState(filmId);
}