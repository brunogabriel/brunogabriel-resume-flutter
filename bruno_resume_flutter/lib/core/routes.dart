import 'package:flutter/widgets.dart';
import 'package:animations/animations.dart';

class Routes {
  static const String home = "/";

  static Route<T> fadeThrough<T>(
    RouteSettings settings,
    WidgetBuilder page, {
    int duration = 300,
  }) =>
      PageRouteBuilder<T>(
        settings: settings,
        transitionDuration: Duration(milliseconds: duration),
        pageBuilder: (context, animation, secondaryAnimation) => page(context),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeScaleTransition(animation: animation, child: child),
      );
}
