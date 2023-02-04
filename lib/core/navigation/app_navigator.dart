import 'package:flutter/material.dart';

class AppNavigator {
  static final navigatorKey = GlobalKey<NavigatorState>();

  navigateTo(Widget to, {bool pop = false, bool clearStack = false}) {
    if (clearStack) {
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => to),
        (route) => false,
      );
      return;
    }

    if (pop && (navigatorKey.currentState?.canPop() ?? false)) {
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(builder: (_) => to),
      );
      return;
    }

    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (_) => to),
    );
  }

  pop() {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop();
    }
  }

  clearNavigationStackBelow() {
    navigatorKey.currentState?.popUntil(
      (route) => route.isCurrent,
    );
  }
}
