import "package:flutter/material.dart";

class OverviewStatistic extends StatelessWidget {
  final String statistic;
  final String unit;
  final String statisticDescriptionLineOne;
  final String statisticDescriptionLineTwo;

  OverviewStatistic(
      {@required this.statistic,
      @required this.statisticDescriptionLineOne,
      @required this.statisticDescriptionLineTwo,
      this.unit});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 110.0,
            child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(this.statistic,
                            style: Theme.of(context).textTheme.display2),
                        Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(this.unit ?? "",
                                style: Theme.of(context).textTheme.subtitle)),
                      ]),
                  Text(this.statisticDescriptionLineOne,
                      style: Theme.of(context).textTheme.subtitle),
                  Text(this.statisticDescriptionLineTwo,
                      style: Theme.of(context).textTheme.subtitle)
                ])),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Theme.of(context).primaryColorLight),
                    right: BorderSide(
                        width: 1.0,
                        color: Theme.of(context).primaryColorLight)))));
  }
}
