import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import '../MainScreen.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
      title: "Premier League",
      description: "English Premier League or EPL",
      pathImage: "images/premier_league.jpg",
      backgroundColor: Colors.pinkAccent,
    ));
    listSlides.add(Slide(
      title: "La Liga",
      description: "The Campeonato Nacional de Liga de Primera División",
      pathImage: "images/laliga.png",
      backgroundColor: Colors.deepOrangeAccent,
    ));
    listSlides.add(Slide(
      title: "Bundesliga",
      description: "Federal League",
      pathImage: "images/bundesliga.jpg",
      backgroundColor: Colors.redAccent,
    ));
    listSlides.add(Slide(
      title: "Serie A",
      description: "Lega Nazionale Professionisti Serie A",
      pathImage: "images/serie_a.jpg",
      backgroundColor: Colors.blueAccent,
    ));
    listSlides.add(Slide(
      title: "Ligue 1",
      description: "Ligue 1 Conforama",
      pathImage: "images/ligue_one.png",
      backgroundColor: Colors.amberAccent,
    ));
  }

  onPressedDone() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => MainScreen()));

  }

}