import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

import '../models/models.dart';

class AppRoutes {
  static const initalRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        screen: HomeScreen(),
        icon: Icons.home,
        name: 'Home Screen'),
    MenuOption(
        route: 'screen_one',
        screen: const ScreenOne(),
        icon: Icons.ac_unit_rounded,
        name: 'Screen One'),
    MenuOption(
        route: 'screen_two',
        screen: const ScreenTwo(),
        icon: Icons.abc_sharp,
        name: 'Screen Two'),
    MenuOption(
        route: 'screen_three',
        screen: const ScreenThree(),
        icon: Icons.account_balance_wallet_outlined,
        name: 'Screen Three'),
    MenuOption(
        route: 'form_screen',
        screen: FormScreen(),
        icon: Icons.adb_rounded,
        name: 'Form Screen')
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> object = {};

    for (int i = 0; i < menuOptions.length; i++) {
      object.addAll({menuOptions[i].route: (context) => menuOptions[i].screen});
    }

    return object;
  }
}
