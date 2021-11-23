import 'package:flutter/material.dart';

import 'package:taomlar/models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Function toggleLikie;
  final Function isFavorite;
  const CategoryMealsScreen({
    Key? key,
    required this.toggleLikie,
    required this.isFavorite,
  }) : super(key: key);

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final categoryData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final title = categoryData['categoryTitle'];
    final meals = categoryData['categoryMeals'] as List<Meal>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: meals.length > 0
          ? ListView.builder(
              padding: const EdgeInsets.all(10),
              itemBuilder: (ctx, index) => MealItem(
                meal: meals[index],
                toggleLikie: toggleLikie,
                isFavorite: isFavorite,
              ),
              itemCount: meals.length,
            )
          : const Center(
              child: Text("Bu bo'limga hali mahsulotlar qo'shilmagan."),
            ),
    );
  }
}
