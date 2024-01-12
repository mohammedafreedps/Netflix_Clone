import 'package:flutter/material.dart';
import 'package:netflixclone/Pages/homePage.dart';
import 'package:netflixclone/Provider/movieProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MovieDetail())],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color.fromARGB(255, 10, 10, 10)
        ),
        home: HomePage()
      ),
    );
  }
}
