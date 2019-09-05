import "package:flutter/material.dart";

import "src/ui/home.dart";
import "src/ui/workout_page.dart";
import "theme.dart";

class Routes {
  final routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/workout": (BuildContext context) => WorkoutPage(),
  };

  final theme = buildTheme();

  Routes() {
    runApp(MaterialApp(
      title: "Beep",
      theme: theme,
      routes: routes,
      home: Home(),
    ));
  }
}
