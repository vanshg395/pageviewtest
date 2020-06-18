import 'package:flutter/material.dart';

import 'locator.dart';
import './services/navigation_service.dart';
import './routing/router.dart';
import './routing/route_names.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Just Bake Admin',
      theme: ThemeData(
        primaryColor: Color(0xFF1188E3),
        accentColor: Color(0xFF292827),
        canvasColor: Colors.white,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.white,
          ),
          headline6: TextStyle(
            color: Colors.white,
          ),
          caption: TextStyle(
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      builder: (context, child) => child,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
      // onUnknownRoute: getDefaultRoute,
    );
  }
}
