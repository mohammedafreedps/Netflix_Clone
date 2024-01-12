import 'package:flutter/material.dart';
import 'package:netflixclone/Constant/url.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:netflixclone/Widgets/movieListViewWidget.dart';
import 'package:provider/provider.dart';

class TVShowPage extends StatefulWidget {
  const TVShowPage({super.key});

  @override
  State<TVShowPage> createState() => _TVShowPageState();
}

class _TVShowPageState extends State<TVShowPage> {
  void sliderCall(){
    print('first call');
    context.read<MovieDetail>().imageSlider();
  }
  @override
  void initState() {
    sliderCall();
    super.initState();
  }
  @override
  void dispose() {
    if (sliderTimer != null) {
      sliderTimer!.cancel();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              context.watch<MovieDetail>().bannerPostPath != null ?
              Image.network(imagePath+context.watch<MovieDetail>().bannerPostPath!.poster_path) :
              Container(
                width: double.infinity,
                height: 740,
                color: const Color.fromARGB(255, 66, 66, 66),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Loding'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 160,
                child: AppBar(
                  actions: [
                    Icon(Icons.cast),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.supervised_user_circle)
                  ],
                  backgroundColor: Colors.black.withOpacity(0.8),
                  elevation: 0,
                  title: Text('NetFlix',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
                  bottom: TabBar(tabs: [
                    Tab(
                      text: 'Discover',
                    ),
                    Tab(
                      text: 'Movie',
                    ),
                    Tab(
                      text: 'TV Show',
                    ),
                  ]),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Now Playing',
                    style: TextStyle(fontSize: 25),
                  ),
                  MovieListViewWidget(
                      movieList: context.watch<MovieDetail>().nowPlayingMovie,isMovie: true,),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 25),
                  ),
                  MovieListViewWidget(
                    movieList: context.watch<MovieDetail>().popularMovie,isMovie: true,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Up Coming',
                    style: TextStyle(fontSize: 25),
                  ),
                  MovieListViewWidget(
                    movieList: context.watch<MovieDetail>().upComingMovie,isMovie: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
