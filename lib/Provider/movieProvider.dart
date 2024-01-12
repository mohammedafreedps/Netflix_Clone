import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflixclone/Constant/url.dart';
import 'package:netflixclone/Model/movie_model.dart';
import 'package:netflixclone/Model/tvSeries_model.dart';
import 'package:netflixclone/Service/movies._service.dart';

Timer? sliderTimer ;

class MovieDetail extends ChangeNotifier {
  List<movieModel> popularMovie = [];
  List<movieModel> nowPlayingMovie = [];
  List<movieModel> upComingMovie = [];
  List<movieModel> movies = [];
  List<tvSeriesModel> tvShows = [];
  List<movieModel> topRated = [];
  List<movieModel> searchResult = [];
  movieModel? bannerPostPath;
  int I = 0;

  void fechDataFromMocky() async {
    getFromDatabase gfd = getFromDatabase();
    popularMovie = await gfd.fechData(popularMovieUrl);
    nowPlayingMovie = await gfd.fechData(nowPlayingMovieUrl);
    upComingMovie = await gfd.fechData(upComingUrl);
    bannerPostPath = popularMovie[I];
    movies = await gfd.fechData(moviesUrl);
    tvShows = await gfd.fechDataTVS(tvShowUrl);
    topRated = await gfd.fechData(topRatedUrl);
    notifyListeners();
  }

  void searchMovie(String movieName) async {
    final gfd = getFromDatabase();
    String mov = movieName.replaceAll(' ', '+');
    searchResult = await gfd.fechData(
        'https://api.themoviedb.org/3/search/movie?query=$mov&api_key=bfac9afbaaa7adfd08730e076740c7d5');
    print(searchResult);
    notifyListeners();
  }

  void imageSlider() {
    if (popularMovie.isNotEmpty) {
      sliderTimer = Timer.periodic(Duration(seconds: 3), (timer) {
        if (popularMovie.isNotEmpty) {
          if (I < popularMovie.length - 1) {
            I++;
          } else {
            print('elseIf Statement');
            I = 0;
          }
          print('called' +
              I.toString() +
              ' of ' +
              popularMovie.length.toString());
          bannerPostPath = popularMovie[I];
          notifyListeners();
        }
      });
    }
  }
}
