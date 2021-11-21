import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../screens/meal_details_screen.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({
    Key? key,
    required this.meal,
  }) : super(key: key);

  void _goToMealDetails(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetailsScreen.routeName, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _goToMealDetails(context),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      meal.imageUrls[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      width: 200,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        meal.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        meal.isLike ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                    Text("${meal.preparingTime} minutes"),
                    Text("\$${meal.price}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
