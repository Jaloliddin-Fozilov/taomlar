class CategoryModel {
  final String id;
  final String title;
  final String imageUrl;

  const CategoryModel({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

class CategoriesModels {
  List<CategoryModel> _list = [
    CategoryModel(
        id: 'c1', title: 'Fast food', imageUrl: "assets/images/burger.jpg"),
    CategoryModel(
        id: 'c2',
        title: 'Milliy taomlar',
        imageUrl: "assets/images/uzbekplov.jpg"),
    CategoryModel(
        id: 'c3',
        title: 'Italiya taomlari',
        imageUrl: "assets/images/pizza.jpg"),
    CategoryModel(
        id: 'c4',
        title: 'Fransiya taomlari',
        imageUrl: "assets/images/nicoise.jpg"),
    CategoryModel(
        id: 'c5', title: 'Ichimliklar', imageUrl: "assets/images/cola.jpg"),
    CategoryModel(
        id: 'c6', title: 'Salatlar', imageUrl: "assets/images/salat.jpg"),
  ];

  List<CategoryModel> get list {
    return _list;
  }
}
