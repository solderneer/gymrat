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
            style: Theme.of(context)
                .accentTextTheme
                .subtitle
                .copyWith(fontSize: 9.0)),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            border: Border.all(width: 1.0, color: const Color(0xFFFFFFFF))));
  }
}
