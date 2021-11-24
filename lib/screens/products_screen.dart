import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../widgets/main_drawer.dart';

class ProductsScreen extends StatelessWidget {
  final List<Meal> meals;
  const ProductsScreen({
    Key? key,
    required this.meals,
  }) : super(key: key);

  static const routName = '/products_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mahsulotlar"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                meals[index].imageUrls[0],
              ),
            ),
            title: Text(meals[index].title),
            subtitle: Text("\$${meals[index].price}"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
