import "package:flutter/material.dart";

class MuscleTag extends StatelessWidget {
  final String muscle;
  final bool inverted;

  MuscleTag({@required this.muscle, this.inverted: false});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 2.5, bottom: 2.5, left: 5.0, right: 5.0),
        child: Text(this.muscle,
            style: Theme.of(context).primaryTextTheme.body1.copyWith(
                fontSize: 10.0,
                color: (inverted)
                    ? Theme.of(context).primaryColor
                    : Colors.white)),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                width: 1.0,
                color: (inverted)
                    ? Theme.of(context).primaryColor
                    : Colors.white)));
  }
}
