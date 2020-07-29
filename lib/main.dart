import 'package:flutter/material.dart';
import 'categories_screen.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        )
      ),
      home: Scaffold(
        body: CategoriesScreen(),
      ),
    );
  }
}
