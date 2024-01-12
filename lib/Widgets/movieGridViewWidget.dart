import 'package:flutter/material.dart';
import 'package:netflixclone/Constant/url.dart';
import 'package:netflixclone/Pages/movieDetailPage.dart';

class MovieGridViewWidget extends StatefulWidget {
 final List movieList;
 final bool isMovie;
  MovieGridViewWidget({super.key,required this.movieList,required this.isMovie});

  @override
  State<MovieGridViewWidget> createState() => _MovieGridViewWidgetState();
}

class _MovieGridViewWidgetState extends State<MovieGridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.isMovie == true?  GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7
      ),
      itemCount: widget.movieList.length,
      itemBuilder: (BuildContext context, int index) {
        final current = widget.movieList[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MoveieDetailPage(index: index, movieList: widget.movieList,isMovies: widget.isMovie,)));
          },
          child: SizedBox(
            child:  Image.network(imagePath+current.poster_path),
          ),
        );
      },
    ):
     GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 1.9
      ),
      itemCount: widget.movieList.length,
      itemBuilder: (BuildContext context, int index) {
        final current = widget.movieList[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MoveieDetailPage(index: index, movieList: widget.movieList,isMovies: widget.isMovie,)));
          },
          child: SizedBox(
            child: Image.network(imagePath+current.backdrop_path),
          ),
        );
      },
    );
  }
}
