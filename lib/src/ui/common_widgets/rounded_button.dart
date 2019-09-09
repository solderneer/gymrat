import "package:flutter/material.dart";

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final IconData icon;

  RoundedButton(
      {@required this.buttonText, @required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        textColor: Theme.of(context).primaryColor,
        color: Theme.of(context).accentColor,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: onPressed,
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(icon),
          Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(this.buttonText.toUpperCase(),
                  style: Theme.of(context)
                      .primaryTextTheme
                      .title
                      .copyWith(color: Theme.of(context).primaryColor))),
        ]));
  }
}
