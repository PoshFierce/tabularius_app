import 'package:flutter/material.dart';
import 'ui/special_entities/nav_service.dart';

void main() => runApp(TabulariusApp());

class TabulariusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TABULARIUS',
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: generateRoute,
      initialRoute: NavConst.introRoute,
    );
  }
}
