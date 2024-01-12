import 'package:flutter/material.dart';
import 'package:netflixclone/Constant/url.dart';

class MoveieDetailPage extends StatelessWidget {
  final List movieList;
  final int index;
  final bool isMovies;
  MoveieDetailPage({super.key, required this.index, required this.movieList,required this.isMovies});

  @override
  Widget build(BuildContext context) {
    return isMovies == true ? Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(imagePath + movieList[index].poster_path),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  movieList[index].original_title,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Release Date' + ' - ' + movieList[index].release_date,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Vote Count' + ' - ' + movieList[index].vote_count.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Overview',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  movieList[index].overview,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    ) : 
    Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(imagePath + movieList[index].backdrop_path),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  movieList[index].original_name,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Release Date' + ' - ' + movieList[index].first_air_date,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Vote Count' + ' - ' + movieList[index].vote_count.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Overview',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  movieList[index].overview,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
