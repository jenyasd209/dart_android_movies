import 'package:flutter/material.dart';
import 'package:task_app_shared/task_app_shared.dart';
import 'package:task_flutter_app/movies/movieInfo/movieInfo.dart';

class MovieState extends State<MovieInfo> {
  ApiService _apiService = ApiService();
  Movie movie;
  int filmId;

  MovieState(this.filmId);

  @override
  void initState() {
    super.initState();
    _apiService.getMovieInfo(filmId).then((result) {
      setState(() {
        movie = result;
        print(movie.title);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (movie == null) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Loading..."),
        ),
      );
    }else {
      return Scaffold(
          appBar: AppBar(
            title: Text(movie.originalName),
          ),
          body:Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(movie.posterPath)
                  ],
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Text(
                        movie.overview,
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
      );
    }
  }
}