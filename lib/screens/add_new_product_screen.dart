import 'package:flutter/material.dart';

import '../models/category_model.dart';

class AddNewProductScreen extends StatefulWidget {
  final List<CategoryModel> categories;
  const AddNewProductScreen({
    Key? key,
    required this.categories,
  }) : super(key: key);

  static const routName = '/add-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  late String categoryId;

  @override
  void initState() {
    super.initState();
    categoryId = widget.categories[0].id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ovqat qo'shish"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              DropdownButton(
                isExpanded: true,
                value: categoryId,
                onChanged: (id) {
                  setState(() {
                    categoryId = id as String;
                  });
                },
                items: widget.categories
                    .map((category) => DropdownMenuItem(
                          child: Text(category.title),
                          value: category.id,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
