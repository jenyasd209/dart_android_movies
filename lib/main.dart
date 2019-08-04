import 'package:flutter/material.dart';
import 'package:task_flutter_app/movies/moviesList/moviesList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MovieList()
    );
  }
}



