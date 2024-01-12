import 'package:flutter/material.dart';
import 'package:netflixclone/Constant/url.dart';
import 'package:netflixclone/Model/movie_model.dart';
import 'package:netflixclone/Pages/movieDetailPage.dart';

class MovieListViewWidget extends StatefulWidget {
  final List movieList;
  final bool isMovie;
  MovieListViewWidget({super.key,required this.movieList,required this.isMovie});


  @override
  State<MovieListViewWidget> createState() => _MovieListViewWidgetState();
}

class _MovieListViewWidgetState extends State<MovieListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: widget.movieList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          movieModel current = widget.movieList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MoveieDetailPage(index: index, movieList: widget.movieList,isMovies: widget.isMovie,)));
      },
              child: Container(
                color: Colors.blue,
                child: Image.network(imagePath+ current.poster_path),
              ),
            ),
          );
        },
      ),
    );
  }
}
