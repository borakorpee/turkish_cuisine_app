// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/turkish_cuisine_theme.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            size: 26,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: tapHandler,
        ),
        Divider(
          color: TurkishCuisineTheme.buildLightTheme().dividerColor,
          thickness: 2,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(30),
          alignment: Alignment.centerLeft,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Cooking Up',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.black87,
                  letterSpacing: 5),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 4,
        ),
        SizedBox(height: 20),
        buildListTile(
          'Meals',
          Icons.restaurant,
          () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildListTile(
          'Filters',
          Icons.settings,
          () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          },
        )
      ]),
    );
  }
}
