import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'package:taomlar/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  void _goToCategoryMealsScreen(BuildContext context) {
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (ctx) => CategoryMealsScreen()));
    Navigator.of(context)
        .pushNamed('/category-meals', arguments: category.title);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToCategoryMealsScreen(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                category.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                category.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
