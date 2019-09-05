import "package:flutter/material.dart";

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
            ])));
  }
}
