import 'package:flutter/material.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:netflixclone/Widgets/movieGridViewWidget.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieGridViewWidget(isMovie: true, movieList: context.read<MovieDetail>().topRated,)
    );
  }
}