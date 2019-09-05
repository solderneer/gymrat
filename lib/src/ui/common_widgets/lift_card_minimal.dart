import "package:flutter/material.dart";

import "muscle_tag.dart";

class LiftCardMinimal extends StatelessWidget {
  final String title;
  final List<String> muscleTags;

  LiftCardMinimal({@required this.title, @required this.muscleTags});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Text(this.title, style: Theme.of(context).accentTextTheme.title),
            Spacer(),
            Text("20kg | 8 reps × 3 sets",
                style: Theme.of(context).accentTextTheme.subtitle.copyWith(
                    fontWeight: FontWeight.w300, color: Color(0xFFFFFFFF))),
          ]),
          Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: muscleTags
                      .map((muscle) => Padding(
                          padding: EdgeInsets.only(right: 7.0),
                          child: MuscleTag(muscle: muscle)))
                      .toList())),
        ]),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            border: Border.all(width: 3.0, color: const Color(0xFFFFFFFF))));
  }
}
