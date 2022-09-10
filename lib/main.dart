// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './dummy_data.dart';
import './models/meal.dart';
import './screens/filter_screen.dart';

import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';

import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

String complexityTextreturn(complexity) {
  switch (complexity) {
    case Complexity.Simple:
      return 'Simple';
      break;
    case Complexity.Challenging:
      return 'Challenging';
      break;
    case Complexity.Hard:
      return 'Hard';
      break;
    default:
      return 'Unknown';
  }
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filers = {
    'simple': false,
    'challenging': false,
    'hard': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;

  void _setFilters(Map<String, bool> filterDate) {
    setState(() {
      _filers = filterDate;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filers['simple'] &&
            complexityTextreturn(meal.complexity) == 'Simple') {
          return true;
        }
        if (_filers['challenging'] &&
            complexityTextreturn(meal.complexity) == 'Challenging') {
          return true;
        }
        if (_filers['hard'] &&
            complexityTextreturn(meal.complexity) == 'Hard') {
          return true;
        }
        return false;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turkish Cuisine',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.red,
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              fontSize: 24,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(_filers, _setFilters),
      },
    );
  }
}
