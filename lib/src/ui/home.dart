import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "common_widgets/top_bar.dart";
import "common_widgets/overview_statistic.dart";
import "common_widgets/workout_card.dart";
import "common_widgets/lift_card.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        TopBar(title: "Overview", icons: <IconButton>[
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
        // Adding the overall status panel
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OverviewStatistic(
                  statistic: "24",
                  statisticDescriptionLineOne: "workouts",
                  statisticDescriptionLineTwo: "completed"),
              OverviewStatistic(
                  statistic: "103k",
                  unit: "kg",
                  statisticDescriptionLineOne: "tonnage",
                  statisticDescriptionLineTwo: "lifted"),
              OverviewStatistic(
                  statistic: "70",
                  unit: "kg",
                  statisticDescriptionLineOne: "current",
                  statisticDescriptionLineTwo: "weight"),
            ]),
        // Today's activities section
        Container(
            padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text("Today".toUpperCase(),
                          style: Theme.of(context)
                              .primaryTextTheme
                              .display1
                              .copyWith(color: Color(0xFFB5B5B5)))),
                  WorkoutCard(
                      title: "Chest, Back, Biceps, Legs",
                      duration: "15m 30s",
                      lastExerciseDate: "Mon, Dec 18th",
                      muscleTags: <String>["Chest", "Back"]),
                ])),
        // My lifts section for the pinned lifts
        Container(
            padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Row(children: <Widget>[
                        Text("My lifts".toUpperCase(),
                            style: Theme.of(context)
                                .primaryTextTheme
                                .display1
                                .copyWith(color: Color(0xFFB5B5B5))),
                        Spacer(),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.plusCircle, size: 17.0),
                            color: Color(0xFFB5B5B5),
                            tooltip: "Add new lift",
                            onPressed: () => {}),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.ellipsisH, size: 15.0),
                            color: Color(0xFFB5B5B5),
                            tooltip: "Add new lift",
                            onPressed: () => Navigator.pushNamed(
                                context, "/workout_overview")),
                      ])),
                  LiftCard(
                      title: "Bench Press",
                      maxLift: "20",
                      totalLift: "130k",
                      repCount: "8",
                      setCount: "3",
                      muscleTags: ["Chest", "Triceps"]),
                ])),
      ]),
    );
  }
}
