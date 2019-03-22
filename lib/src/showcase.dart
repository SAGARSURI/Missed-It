import 'package:flutter/material.dart';

class Showcase extends StatefulWidget {
  @override
  ShowcaseState createState() {
    return ShowcaseState();
  }
}

class ShowcaseState extends State<Showcase> {
  int _counter = 0;
  final List<String> _images = [
    "assets/images/rotary_telephone.png",
    "assets/images/typewriter.png",
    "assets/images/old_tv.png",
    "assets/images/discman.png",
    "assets/images/cassette.png",
    "assets/images/floppydisk.png",
    "assets/images/game_console.png",
    "assets/images/vhs_tape.png"
  ];
  final List _titles = [
    "Rotary Telephone \n\n Today making a phone call is just few clicks away, but not back in the day!",
    "Typewriter \n\n With typewriters, if you made a mistake, you had to either white it out or start all over again!",
    "CRT TV \n\n These produced color pattern at midnight - something today's Netflix obsessed kids probably can't even comprehend",
    "Discman \n\n A perfect CD carrier back in the day. Played some music as well",
    "Cassette \n\n Think of these as the CD. You had the feature to record your favorite song from radio",
    "Floppy Disk \n\n Today its the symbol of save button on computers",
    "Game Boy \n\n These 8 bit handheld game console were the best thing ever made",
    "VHS Tape \n\n Every time you want to watch a movie, prepare yourself to rewind the tape when you are done viewing"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xffffcc33),
              Color(0xffffb347),
            ],
          ),
        ),
        child: content(),
      ),
    );
  }

  Container content() {
    return Container(
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                _images[_counter],
                height: 300.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 45.0),
              ),
              Text(
                _titles[_counter],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'Baskerville'),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: FloatingActionButton(
              child: Icon(Icons.arrow_forward),
              backgroundColor: Colors.pink,
              onPressed: () {
                setState(() {
                  if (_counter < _images.length - 1)
                    _counter++;
                  else
                    _counter = 0;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
