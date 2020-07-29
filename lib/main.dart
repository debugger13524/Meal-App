import 'package:flutter/material.dart';
import 'categories_screen.dart';
void main()=> runApp(MyHomePage());

 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }

 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return
     MaterialApp(
       home: Scaffold(
         body: CategoriesScreen(),
       ),
     );

   }
 }
