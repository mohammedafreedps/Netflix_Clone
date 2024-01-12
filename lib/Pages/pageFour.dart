import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'Introducing Downloads for you',
          style: TextStyle(fontSize: 30),
        )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Text(
            'We Will download a personalised selection of movies and shows for you, so There always something to watch on your device',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          )),
        ),
        Container(
          width: 140,
          height: 70,
          color: const Color.fromARGB(255, 52, 52, 52),
          child: Center(child: Text('Not Available')),
        )
      ],
    ));
  }
}
