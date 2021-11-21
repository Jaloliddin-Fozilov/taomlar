import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/meal.dart';
import '../widgets/category_item.dart';

class Home extends StatelessWidget {
  final List<CategoryModel> categories;
  final List<Meal> meals;
  const Home({
    Key? key,
    required this.categories,
    required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ovqatlar Menyusi"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: categories.map((category) {
          final categoryMeals =
              meals.where((meal) => meal.categoryId == category.id).toList();
          return CategoryItem(category: category, meals: categoryMeals);
        }).toList(),
      ),
    );
  }
}
