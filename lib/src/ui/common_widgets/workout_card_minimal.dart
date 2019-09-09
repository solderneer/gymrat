import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "muscle_tag.dart";

class WorkoutCardMinimal extends StatelessWidget {
  final String title;
  final String duration;
  final List<String> muscleTags;

  WorkoutCardMinimal(
      {@required this.title,
      @required this.duration,
      @required this.muscleTags});

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.canvas,
        elevation: 5.0,
        color: Theme.of(context).primaryColor,
        child: Container(
            padding: EdgeInsets.only(
                top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Text(this.title,
                                style:
                                    Theme.of(context).accentTextTheme.title)),
                        Icon(FontAwesomeIcons.clock, size: 15.0),
                        Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text(this.duration,
                                style:
                                    Theme.of(context).accentTextTheme.subtitle))
                      ])),
                  Row(
                      children: muscleTags
                          .map((muscle) => Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: MuscleTag(muscle: muscle)))
                          .toList()),
                ])));
  }
}
