import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "common_widgets/lift_card_minimal.dart";

class WorkoutPage extends StatelessWidget {
  final String title = "Chest, Back, Biceps, Legs";
  final int totalExerciseCount = 8;
  final String estimatedTime = "15m 30s";

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        body: Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.only(
                top: statusbarHeight + 10.0, left: 20.0, right: 20.0),
            child: Column(children: <Widget>[
              Text(this.title,
                  style: Theme.of(context).accentTextTheme.display4),
              Container(
                  color: Color(0xFF4A5866),
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 1.0),
              Row(children: <Widget>[
                Text("${this.totalExerciseCount} total exercises",
                    style: Theme.of(context).accentTextTheme.subtitle),
                Spacer(),
                Icon(FontAwesomeIcons.clock, size: 15.0),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("${this.estimatedTime}",
                        style: Theme.of(context).accentTextTheme.subtitle)),
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: LiftCardMinimal(
                      title: "Bench Press",
                      muscleTags: <String>["Chest", "Back"])),
            ])));
  }
}
