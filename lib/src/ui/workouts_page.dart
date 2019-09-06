import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "common_widgets/top_bar.dart";

class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<WorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      TopBar(title: "My Workouts", icons: <IconButton>[
        IconButton(
          icon: Icon(FontAwesomeIcons.plusCircle),
          color: Colors.black,
          tooltip: "My workouts",
          onPressed: () => Navigator.pop(context, "/home"),
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.home),
          color: Colors.black,
          tooltip: "Settings",
          onPressed: () => Navigator.pop(context, "/home"),
        ),
      ]),
    ]));
  }
}
