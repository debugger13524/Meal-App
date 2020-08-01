import 'package:flutter/material.dart';
import 'package:mealapp/category_meals_screen.dart';
import 'package:mealapp/meal_detail_screen.dart';
import 'package:mealapp/tabs_screen.dart';
import 'categories_screen.dart';
import 'filters_screen.dart';
import 'category_data.dart';
import 'meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if(_filters['gluten'] && !meal.isGlutenFree)
          // ignore: missing_return
          {
            return false;
          }
        if(_filters['lactose'] && !meal.isLactoseFree)
          // ignore: missing_return
            {
          return false;
        }
        if(_filters['vegan'] && !meal.isVegan)
          // ignore: missing_return
            {
          return false;
        }
        if(_filters['vegetarian'] && !meal.isVegetarian)
          // ignore: missing_return
            {
          return false;
        }
     return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 224, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 20.0,
                ),
              )),
//
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters,_setFilters),
      },
    );
  }
}
