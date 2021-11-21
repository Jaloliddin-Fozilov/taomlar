import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);

  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              meal.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            Text(
              "\$${meal.price}",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ta'rifi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(meal.description),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Card(
                margin: EdgeInsets.all(15),
                child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    itemBuilder: (ctx, index) {
                      return Text(meal.ingredients[index]);
                    },
                    separatorBuilder: (ctx, index) {
                      return const Divider();
                    },
                    itemCount: meal.ingredients.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
