import 'package:flutter/material.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:netflixclone/Widgets/movieGridViewWidget.dart';
import 'package:provider/provider.dart';

class CatogaryPage extends StatelessWidget {
   CatogaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('TV Shows',style: TextStyle(fontSize: 40),),
            ),
            SizedBox(
              height: 870,
              child: MovieGridViewWidget(movieList: context.watch<MovieDetail>().tvShows,isMovie: false,)
            ),
          ]),
        ),
      ),
    );
  }
}