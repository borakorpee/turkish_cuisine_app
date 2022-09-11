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
  List<Meal> _favoriteMeals = [];

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

  void _toggleFavorites(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turkish Cuisine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      routes: {
        '/': (ctx) => TabScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(_toggleFavorites, _isMealFavorite),
        FilterScreen.routeName: (ctx) => FilterScreen(_filers, _setFilters),
      },
    );
  }
}
