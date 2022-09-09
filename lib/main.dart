import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

import './screens/screens.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'main application',
        initialRoute: AppRoutes.initalRoute,
        routes: AppRoutes.getRoutes(),
        onGenerateRoute: (settings) {
          print(settings.name);
          if (settings.name == "screen_twoo") {
            return MaterialPageRoute(builder: (context) => const GNScreen());
          } else {
            return null;
          }
        },
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (context) => const UnkScreen()),
        theme: AppTheme.lightTheme);
  }
}
