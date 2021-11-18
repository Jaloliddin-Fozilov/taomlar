import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../widgets/category_item.dart';

class Home extends StatelessWidget {
  final List<CategoryModel> categories;
  const Home({Key? key, required this.categories}) : super(key: key);

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
        children: categories
            .map((category) => CategoryItem(category: category))
            .toList(),
      ),
    );
  }
}
