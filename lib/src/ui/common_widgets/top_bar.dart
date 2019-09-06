import "package:flutter/material.dart";

class TopBar extends StatelessWidget {
  final String title;
  final List<IconButton> icons;

  TopBar({@required this.title, this.icons: const []});

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
        child: Row(
            children: List.from([
          Text(title, style: Theme.of(context).textTheme.display4),
          Spacer(),
        ])
              ..addAll(icons)),
      ),
    );
  }
}
