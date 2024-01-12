import 'package:flutter/material.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:netflixclone/Widgets/movieGridViewWidget.dart';
import 'package:provider/provider.dart';

class PageThree extends StatelessWidget {
   PageThree({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(20),
            child: Column(
              children:[ 
                TextField(
                onChanged: (input) {
                  context.read<MovieDetail>().searchMovie(input);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(221, 158, 158, 158),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
              ),
              SizedBox(height: 40,),
             SizedBox(
              height: 850,
              width: double.infinity,
              child:  MovieGridViewWidget(movieList: context.watch<MovieDetail>().searchResult, isMovie: true)) 
            ]),
          ),
        ),
      )
    );
  }
}