import 'package:flutter/material.dart';

import 'home.dart';
import 'favorite_screen.dart';

import '../models/category_model.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<CategoryModel> categories;
  final List<Meal> meals;
  const TabsScreen({
    Key? key,
    required this.categories,
    required this.meals,
  }) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var tabIndex = 0;
  void _changeTab(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ovqatlar menyusi"),
      ),
      body: Center(
        child: Text("Salom"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _changeTab,
        currentIndex: tabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
            ),
            label: "Barchasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Sevimli",
          ),
        ],
      ),
    );
  }
}
