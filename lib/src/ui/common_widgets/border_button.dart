import "package:flutter/material.dart";

class BorderButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final bool invert;

  BorderButton(
      {@required this.buttonText,
      @required this.onPressed,
      this.invert: false});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        textColor: (invert) ? Theme.of(context).primaryColor : Colors.white,
        color: Colors.transparent,
        borderSide: BorderSide(
            width: 1.0,
            color: (invert) ? Theme.of(context).primaryColor : Colors.white),
        onPressed: onPressed);
  }
}
