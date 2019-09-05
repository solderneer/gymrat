import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  final String title;

  TopBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Material(
      type: MaterialType.canvas,
      elevation: 0.0,
      child: Container(
        padding: EdgeInsets.only(
            top: statusbarHeight + 10.0, bottom: 10.0, left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 1.0, color: Theme.of(context).primaryColorLight),
          ),
        ),
        child: Row(children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.display4),
          Spacer(),
          IconButton(
            icon: Icon(FontAwesomeIcons.dumbbell),
            color: Colors.black,
            tooltip: "My workouts",
            onPressed: () => Navigator.pushNamed(context, "/workouts"),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.cog),
            color: Colors.black,
            tooltip: "Settings",
            onPressed: () => {},
          ),
        ]),
      ),
    );
  }
}
