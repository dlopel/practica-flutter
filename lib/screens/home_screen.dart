import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon),
          trailing: Icon(Icons.arrow_right),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () =>
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
