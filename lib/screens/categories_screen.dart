import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 15,
      crossAxisCount: 2,
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(catData.id, catData.title,
              catData.color, catData.categoryImageUrl))
          .toList(),
    );
  }
}

/*GridView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(catData.id, catData.title,
              catData.color, catData.categoryImageUrl))
          .toList(),
    );*/