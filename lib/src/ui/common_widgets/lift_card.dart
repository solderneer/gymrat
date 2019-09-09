import "package:flutter/material.dart";

import "muscle_tag.dart";

class LiftCard extends StatelessWidget {
  final String title;
  final String maxLift;
  final String totalLift;
  final String repCount;
  final String setCount;
  final List<String> muscleTags;

  LiftCard(
      {@required this.title,
      @required this.maxLift,
      @required this.totalLift,
      @required this.repCount,
      @required this.setCount,
      @required this.muscleTags});

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.canvas,
        elevation: 2.5,
        color: Colors.white,
        child: Container(
            padding: EdgeInsets.all(15.0),
            height: 89.0,
            child: Row(children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.title,
                        style: Theme.of(context)
                            .primaryTextTheme
                            .title
                            .copyWith(color: Theme.of(context).primaryColor)),
                    Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: muscleTags
                                .map((muscle) => Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: MuscleTag(
                                        muscle: muscle, inverted: true)))
                                .toList())),
                    Spacer()
                  ]),
              Spacer(),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).primaryTextTheme.subtitle,
                            children: <TextSpan>[
                          TextSpan(
                              text: this.maxLift,
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .subtitle
                                  .copyWith(fontWeight: FontWeight.w600)),
                          TextSpan(text: " kg max")
                        ])),
                    Padding(
                        padding: EdgeInsets.only(top: 2.5),
                        child: RichText(
                            text: TextSpan(
                                style:
                                    Theme.of(context).primaryTextTheme.subtitle,
                                children: <TextSpan>[
                              TextSpan(
                                  text: this.totalLift,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle
                                      .copyWith(fontWeight: FontWeight.w600)),
                              TextSpan(text: " kg total")
                            ]))),
                    Padding(
                        padding: EdgeInsets.only(top: 2.5),
                        child: RichText(
                            text: TextSpan(
                                style:
                                    Theme.of(context).primaryTextTheme.subtitle,
                                children: <TextSpan>[
                              TextSpan(
                                  text: this.repCount,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle
                                      .copyWith(fontWeight: FontWeight.w600)),
                              TextSpan(text: " reps × "),
                              TextSpan(
                                  text: this.setCount,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle
                                      .copyWith(fontWeight: FontWeight.w600)),
                              TextSpan(text: " sets")
                            ]))),
                  ]),
            ])));
  }
}
