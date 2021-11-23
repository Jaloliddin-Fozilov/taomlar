import 'package:flutter/material.dart';
import 'package:taomlar/widgets/meal_item.dart';

import '../models/meal.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> favorites;
  final Function toggleLike;
  final Function isFavorite;
  const FavoritesScreen({
    Key? key,
    required this.favorites,
    required this.toggleLike,
    required this.isFavorite,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  void _toggleLike(String mealId) {
    setState(() {
      widget.toggleLike(mealId);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Sevimli taom o'chirildi!"),
        action: SnackBarAction(
            label: 'BEKOR QILISH',
            onPressed: () {
              setState(() {
                widget.toggleLike(mealId);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.favorites.length > 0
        ? ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: widget.favorites.length,
            itemBuilder: (ctx, index) => MealItem(
              meal: widget.favorites[index],
              toggleLikie: _toggleLike,
              isFavorite: widget.isFavorite,
            ),
          )
        : Center(
            child: Text("Hozircha sevimliga mahsulot qo'shilmagan"),
          );
  }
}
