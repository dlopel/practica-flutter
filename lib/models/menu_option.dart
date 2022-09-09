import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final Widget screen;
  final IconData icon;
  final String name;

  MenuOption(
      {required this.route,
      required this.screen,
      required this.icon,
      required this.name});
}
