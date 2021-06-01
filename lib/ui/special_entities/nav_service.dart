import 'package:flutter/material.dart';
import '../intro_page_ui/intro_page.dart';
import '../userform_page_ui/userform_page.dart';
import '../result_page_ui/result_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case NavConst.introRoute:
      return MaterialPageRoute<Widget>(
        builder: (_) => IntroPage(),
      );
    case NavConst.userformRoute:
      return MaterialPageRoute<Widget>(
        builder: (_) => UserFormPage(),
      );
    case NavConst.resultRoute:
      return MaterialPageRoute<Widget>(
        builder: (_) => ResultPage(),
      );
    default:
      return MaterialPageRoute<Widget>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No path for ${settings?.name}'),
          ),
        ),
      );
  }
}

abstract class NavConst {
  static const String introRoute = '/';
  static const String userformRoute = 'userform_page';
  static const String resultRoute = 'result_page';
}

final NavigationService navService = NavigationService<dynamic, dynamic>();

class NavigationService<T, U> {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<T> pushNamed(String routeName, {Object args}) async {
    return await navigationKey.currentState.pushNamed<T>(
      routeName,
      arguments: args,
    );
  }

  Future<T> push(Route<T> route) async {
    return await navigationKey.currentState.push<T>(route);
  }

  Future<T> pushReplacementNamed(String routeName, {Object args}) async {
    return await navigationKey.currentState.pushReplacementNamed<T, U>(
      routeName,
      arguments: args,
    );
  }

  Future<T> pushNamedAndRemoveUntil(String routeName, {Object args}) async {
    return await navigationKey.currentState.pushNamedAndRemoveUntil<T>(
      routeName,
      (Route<dynamic> route) => false,
      arguments: args,
    );
  }

  Future<bool> maybePop([Object args]) async {
    return await navigationKey.currentState.maybePop<Object>(args);
  }

  bool canPop() => navigationKey.currentState.canPop();

  void goBack({T result}) => navigationKey.currentState.pop<T>(result);
}
