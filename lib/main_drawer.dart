import 'package:flutter/material.dart';
import 'package:mealapp/filters_screen.dart';
import 'filters_screen.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26.0,
            ),
            title: Text(
              'Meals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26.0,
            ),
            title: Text(
              'Filters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),

        ],
      ),
    );
  }
}
