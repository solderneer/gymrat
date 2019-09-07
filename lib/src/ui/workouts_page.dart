import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "common_widgets/top_bar.dart";
import "common_widgets/workout_card.dart";

class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<WorkoutsPage> {
  final List<WorkoutCard> cards = <WorkoutCard>[
    WorkoutCard(
        title: "Push Split 1",
        duration: "45m 10s",
        lastExerciseDate: "Monday, 18 Dec",
        muscleTags: ["Chest", "Shoulders", "Triceps"]),
    WorkoutCard(
        title: "Pull Split 1",
        duration: "40m 0s",
        lastExerciseDate: "Tuesday, 19 Dec",
        muscleTags: ["Back", "Biceps"]),
    WorkoutCard(
        title: "Legs",
        duration: "1h 30min",
        lastExerciseDate: "Wednesday, 20 Dec",
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
              padding: const EdgeInsets.all(8.0),
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.all(10.0), child: cards[index]);
              })),
    ]));
  }
}
