import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class WorkoutActivePage extends StatefulWidget {
  @override
  _WorkoutActivePageState createState() => _WorkoutActivePageState();
}

class _WorkoutActivePageState extends State<WorkoutActivePage> {
  final String title = "Chest, Back, Biceps, Legs";

  @override
  Widget build(BuildContext context) {
    double statusbarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Material(
            type: MaterialType.canvas,
            color: Theme.of(context).primaryColor,
            child: Container(
                padding: EdgeInsets.only(top: statusbarHeight + 10.0),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(this.title,
                          style: Theme.of(context).accentTextTheme.display4))
                ]))));
  }
}
