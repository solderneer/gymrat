import "package:flutter/material.dart";

import "muscle_tag.dart";

class LiftCardMinimal extends StatelessWidget {
  final String title;
  final List<String> muscleTags;
  final bool inverted;

  LiftCardMinimal(
      {@required this.title, @required this.muscleTags, this.inverted: false});

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.canvas,
        elevation: 2.0,
        child: Container(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Text(this.title,
                    style: Theme.of(context).accentTextTheme.title.copyWith(
                        color: (inverted)
                            ? Theme.of(context).primaryColor
                            : Colors.white)),
                Spacer(),
                Text("20kg | 8 reps × 3 sets",
                    style: Theme.of(context).accentTextTheme.subtitle.copyWith(
                        fontWeight: FontWeight.w300,
                        color: (inverted) ? Colors.black : Colors.white)),
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: muscleTags
                          .map((muscle) => Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: MuscleTag(
                                  muscle: muscle, inverted: inverted)))
                          .toList())),
            ]),
            decoration: BoxDecoration(
                color:
                    (inverted) ? Colors.white : Theme.of(context).primaryColor,
                border: (inverted)
                    ? Border.all(width: 0, color: Colors.transparent)
                    : Border.all(width: 2.0, color: const Color(0xFFFFFFFF)))));
  }
}
