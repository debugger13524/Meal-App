import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final Color color;

  CategoryItem({@required this.title,@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7),
          color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

