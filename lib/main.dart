import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_details_screen.dart';
import './models/category_model.dart';
import './models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _categoryModel = CategoriesModels();
  final _mealModel = Meals();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.adventPro().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(
        categories: _categoryModel.list,
        meals: _mealModel.list,
      ),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
      },
    );
  }
}
