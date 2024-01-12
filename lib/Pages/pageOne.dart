import 'package:flutter/material.dart';
import 'package:netflixclone/Pages/catogoryPage.dart';
import 'package:netflixclone/Pages/moviePage.dart';
import 'package:netflixclone/Pages/discover.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [
            TVShowPage(),
            MoviePage(),
            CatogaryPage()
          ]),
        ));
  }
}
