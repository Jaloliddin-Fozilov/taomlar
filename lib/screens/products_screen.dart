import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../widgets/main_drawer.dart';
import './add_new_product_screen.dart';

class ProductsScreen extends StatelessWidget {
  final List<Meal> meals;
  const ProductsScreen({
    Key? key,
    required this.meals,
  }) : super(key: key);

  static const routName = '/products_screen';

  void _goToAddNewProductScreen(BuildContext context) {
    Navigator.of(context).pushNamed(AddNewProductScreen.routName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mahsulotlar"),
        actions: [
          IconButton(
            onPressed: () => _goToAddNewProductScreen(context),
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
