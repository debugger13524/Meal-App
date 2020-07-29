import 'package:flutter/material.dart';
import 'category.dart';
import 'category_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,


          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const <StretchMode>[
              StretchMode.zoomBackground,
            ],
          ),
          title: Text('Categories'),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.5,
            maxCrossAxisExtent: 200.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                child: CategoryItem(title: CategoryData[index].title, color: CategoryData[index].color),
              );
            },
            childCount: CategoryData.length,
          ),
        ),
      ],
    );
  }
}
