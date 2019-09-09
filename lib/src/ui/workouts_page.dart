import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "common_widgets/top_bar.dart";
import "common_widgets/workout_card_minimal.dart";

class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<WorkoutsPage> {
  final List<WorkoutCardMinimal> cards = <WorkoutCardMinimal>[
    WorkoutCardMinimal(
        title: "Push Split 1",
        duration: "45m 10s",
        muscleTags: ["Chest", "Shoulders", "Triceps"]),
    WorkoutCardMinimal(
        title: "Pull Split 1",
        duration: "40m 0s",
        muscleTags: ["Back", "Biceps"]),
    WorkoutCardMinimal(
        title: "Legs",
        duration: "1h 30min",
        muscleTags: ["Glutes", "Hamstrings", "Calves"])
  ];

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
      Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 4.0, left: 10.0, right: 10.0),
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.only(bottom: 8.0), child: cards[index]);
              })),
    ]));
  }
}
