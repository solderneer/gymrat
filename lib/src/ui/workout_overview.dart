import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "common_widgets/lift_card_minimal.dart";
import "common_widgets/rounded_button.dart";

class WorkoutOverviewPage extends StatelessWidget {
  final String title = "Chest, Back, Biceps, Legs";
  final int totalExerciseCount = 8;
  final String estimatedTime = "15m 30s";

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    final List<LiftCardMinimal> cards = <LiftCardMinimal>[
      LiftCardMinimal(
          title: "Bench Press", muscleTags: <String>["Chest", "Back"]),
      LiftCardMinimal(
          title: "Squats", muscleTags: <String>["Hamstrings", "Glutes"]),
      LiftCardMinimal(title: "Pullups", muscleTags: <String>["Biceps", "Back"]),
      LiftCardMinimal(title: "Incline DB curl", muscleTags: <String>["Biceps"]),
    ];

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
                          style: Theme.of(context).accentTextTheme.display4)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Row(children: <Widget>[
                        Text("${this.totalExerciseCount} total exercises",
                            style: Theme.of(context).accentTextTheme.subtitle),
                        Spacer(),
                        Icon(FontAwesomeIcons.clock, size: 15.0),
                        Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text("${this.estimatedTime}",
                                style: Theme.of(context)
                                    .accentTextTheme
                                    .subtitle)),
                      ])),
                  Container(
                      color: Color(0xFF4A5866),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 1.0),
                  Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 20.0, right: 20.0),
                          itemCount: cards.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: cards[index]);
                          })),
                ]))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  RoundedButton(
                      buttonText: "",
                      icon: FontAwesomeIcons.chartPie,
                      onPressed: () => Navigator.pushNamed(context, "/home")),
                  RoundedButton(
                      buttonText: "",
                      icon: FontAwesomeIcons.userEdit,
                      onPressed: () =>
                          Navigator.pushNamed(context, "/workout_edit")),
                  RoundedButton(
                      buttonText: "Start",
                      icon: FontAwesomeIcons.fireAlt,
                      onPressed: () => Navigator.pushNamed(context, "/home")),
                ])));
  }
}
