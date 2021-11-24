import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:taomlar/screens/products_screen.dart';

import 'package:taomlar/screens/tabs_screen.dart';
import './screens/home.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_details_screen.dart';
import './models/category_model.dart';
import './models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _categoryModel = CategoriesModels();

  final _mealModel = Meals();

  void _toggleLike(String mealId) {
    setState(() {
      _mealModel.toggleLike(mealId);
    });
  }

  bool _isFavorite(String mealId) {
    return _mealModel.favorites.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.adventPro().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: TabsScreen.routName,
      routes: {
        TabsScreen.routName: (ctx) => TabsScreen(
              categories: _categoryModel.list,
              mealModel: _mealModel,
              toggleLike: _toggleLike,
              isFavorite: _isFavorite,
            ),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(
            toggleLikie: _toggleLike, isFavorite: _isFavorite),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
        ProductsScreen.routName: (ctx) =>
            ProductsScreen(meals: _mealModel.list),
      },
    );
  }
}
