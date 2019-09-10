import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "muscle_tag.dart";

class WorkoutCardMinimal extends StatelessWidget {
  final String title;
  final String duration;
  final List<String> muscleTags;
  final bool inverted;

  WorkoutCardMinimal(
      {@required this.title,
      @required this.duration,
      @required this.muscleTags,
      this.inverted: false});

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.canvas,
        elevation: 5.0,
        color: (inverted) ? Colors.white : Theme.of(context).primaryColor,
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
                                style: Theme.of(context)
                                    .accentTextTheme
                                    .title
                                    .copyWith(
                                        color: (inverted)
                                            ? Theme.of(context).primaryColor
                                            : Colors.white))),
                        Icon(FontAwesomeIcons.clock,
                            size: 15.0,
                            color: (inverted) ? Colors.black : Colors.white),
                        Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text(this.duration,
                                style: Theme.of(context)
                                    .accentTextTheme
                                    .subtitle
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: (inverted)
                                            ? Colors.black
                                            : Colors.white)))
                      ])),
                  Row(
                      children: muscleTags
                          .map((muscle) => Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: MuscleTag(
                                  muscle: muscle, inverted: inverted)))
                          .toList()),
                ])));
  }
}
