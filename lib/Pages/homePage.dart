import 'package:flutter/material.dart';
import 'package:netflixclone/Pages/pageFour.dart';
import 'package:netflixclone/Pages/pageOne.dart';
import 'package:netflixclone/Pages/pageThree.dart';
import 'package:netflixclone/Pages/pageTwo.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void testFunction() {
    context.read<MovieDetail>().fechDataFromMocky();
  }

  @override
  void initState() {
    testFunction();
    super.initState();
  }

  int _currentIndex = 0;
  List <Widget> _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:_pages[_currentIndex ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: 'Top'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Downlord')
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
            
          );
        },
      ),
    );
  }
}
