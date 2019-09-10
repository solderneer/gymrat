import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "common_widgets/lift_card_minimal.dart";
import "common_widgets/rounded_button.dart";

class WorkoutEditPage extends StatelessWidget {
  final String title = "Chest, Back, Biceps, Legs";
  final String restTime = "120";
  final int totalExerciseCount = 8;
  static final _formKey = GlobalKey<FormState>();

  final List<LiftCardMinimal> cards = <LiftCardMinimal>[
    LiftCardMinimal(
        title: "Bench Press", muscleTags: <String>["Chest", "Back"]),
    LiftCardMinimal(
        title: "Squats", muscleTags: <String>["Hamstrings", "Glutes"]),
    LiftCardMinimal(title: "Pullups", muscleTags: <String>["Biceps", "Back"]),
    LiftCardMinimal(title: "Incline DB curl", muscleTags: <String>["Biceps"]),
  ];

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        body: Material(
            type: MaterialType.canvas,
            color: Theme.of(context).primaryColor,
            child: Container(
                padding: EdgeInsets.only(top: statusbarHeight + 10.0),
                child: Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextFormField(
                            initialValue: this.title,
                            style: Theme.of(context).accentTextTheme.display4,
                            minLines: 1,
                            maxLines: 2,
                            autofocus: true,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Workout name",
                                hintStyle: Theme.of(context)
                                    .accentTextTheme
                                    .display4
                                    .copyWith(color: Color(0xFF1D2833)))),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0.0, left: 20.0, right: 20.0),
                          child: Row(children: <Widget>[
                            Text("${this.totalExerciseCount} total exercises",
                                style:
                                    Theme.of(context).accentTextTheme.subtitle),
                            Spacer(),
                            Icon(FontAwesomeIcons.clock, size: 15.0),
                            Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: SizedBox(
                                    width: 45.0,
                                    child: TextFormField(
                                        initialValue: this.restTime,
                                        style: Theme.of(context)
                                            .accentTextTheme
                                            .subtitle,
                                        maxLines: 1,
                                        maxLength: 3,
                                        autofocus: true,
                                        cursorColor: Colors.white,
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "120",
                                            suffixText: " s",
                                            counterText: "",
                                            suffixStyle: Theme.of(context)
                                                .accentTextTheme
                                                .subtitle
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w700),
                                            hintStyle: Theme.of(context)
                                                .accentTextTheme
                                                .subtitle
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        Color(0xFF1D2833)))))),
                          ])),
                      Container(
                          color: Color(0xFF4A5866),
                          margin: EdgeInsets.only(top: 0.0),
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
                    ])))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  BottomSheetFloatingButton(),
                  RoundedButton(
                      buttonText: "",
                      icon: FontAwesomeIcons.arrowCircleLeft,
                      onPressed: () => Navigator.pop(context)),
                ])));
  }
}

class BottomSheetFloatingButton extends StatefulWidget {
  @override
  _BottomSheetFloatingButtonState createState() =>
      _BottomSheetFloatingButtonState();
}

class _BottomSheetFloatingButtonState extends State<BottomSheetFloatingButton> {
  bool showFab = true;

  @override
  Widget build(BuildContext context) {
    return (showFab)
        ? RoundedButton(
            buttonText: "",
            icon: FontAwesomeIcons.plusCircle,
            onPressed: () {
              var bottomSheetController = showBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  context: context,
                  builder: (context) => BottomSheetLifts());

              showFloatingActionButton(false);

              bottomSheetController.closed.then((value) {
                showFloatingActionButton(true);
              });
            })
        : Container();
  }

  void showFloatingActionButton(bool value) {
    setState(() {
      showFab = value;
    });
  }
}

class BottomSheetLifts extends StatelessWidget {
  final List<LiftCardMinimal> cards = <LiftCardMinimal>[
    LiftCardMinimal(
        title: "Bench Press",
        muscleTags: <String>["Chest", "Back"],
        inverted: true),
    LiftCardMinimal(
        title: "Squats",
        muscleTags: <String>["Hamstrings", "Glutes"],
        inverted: true),
    LiftCardMinimal(
        title: "Pullups",
        muscleTags: <String>["Biceps", "Back"],
        inverted: true),
    LiftCardMinimal(
        title: "Incline DB curl",
        muscleTags: <String>["Biceps"],
        inverted: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SearchField(),
              Expanded(
                  child: ListView.builder(
                      itemCount: cards.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: cards[index]);
                      })),
            ]));
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: TextField(
          decoration: InputDecoration.collapsed(
            hintText: "Search for a lift",
          ),
        ));
  }
}
