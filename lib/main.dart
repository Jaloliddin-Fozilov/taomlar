import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home.dart';
import './models/category_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _categoryModel = CategoriesModels();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.adventPro().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(categories: _categoryModel.list),
    );
  }
}
