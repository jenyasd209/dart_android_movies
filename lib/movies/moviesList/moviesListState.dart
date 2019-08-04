import 'package:flutter/material.dart';
import 'package:task_app_shared/task_app_shared.dart';
import 'package:task_flutter_app/movies/moviesList/moviesList.dart';
import 'package:task_flutter_app/movies/movieInfo/movieInfo.dart';

class MovieListState extends State<MovieList> {
  MovieBloc _movieBloc = MovieBloc();
  List<Movie> movies;

  @override
  void initState() {
    super.initState();

    _movieBloc.dispatchGetMovies();

    _movieBloc.state.listen((state) {
      setState(() {
        movies = state.movies.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (movies == null) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Loading..."),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Movies list"),
        ),
        body: new Center(
          child: new ListView(
            children: movies
                .map((movie) => new ListTile(
                      onTap: () => onTapped(movie.id),
                      title: new Text(movie.originalName),
//                      subtitle: new Text(movie.originalName),
                    ))
                .toList(),
          ),
        ),
      );
    }
  }

  void onTapped(int filmId) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MovieInfo(filmId)),
    );
  }
}
