import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "muscle_tag.dart";

class WorkoutCard extends StatelessWidget {
  final String lastExerciseDate;
  final String duration;
  final String title;
  final List<String> muscleTags;

  WorkoutCard(
      {@required this.title,
      @required this.duration,
      @required this.lastExerciseDate,
      @required this.muscleTags});

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.canvas,
        elevation: 5.0,
        color: Theme.of(context).primaryColor,
        child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(this.lastExerciseDate,
                        style: Theme.of(context).accentTextTheme.subtitle),
                    Spacer(),
                    Icon(FontAwesomeIcons.clock, size: 15.0),
                    Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: Text(this.duration,
                            style: Theme.of(context).accentTextTheme.subtitle))
                  ]),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(this.title,
                              style:
                                  Theme.of(context).accentTextTheme.display3))),
                  Row(
                      children: muscleTags
                          .map((muscle) => Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: MuscleTag(muscle: muscle)))
                          .toList()),
                  Row(children: <Widget>[
                    Spacer(),
                    Icon(FontAwesomeIcons.fireAlt,
                        color: Theme.of(context).accentColor)
                  ]),
                ])));
  }
}
