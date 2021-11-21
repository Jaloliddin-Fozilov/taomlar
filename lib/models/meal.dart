class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  final int preparingTime;
  final double price;
  final String categoryId;
  bool isLike;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    required this.preparingTime,
    required this.price,
    required this.categoryId,
    this.isLike = false,
  });
}

class Meals {
  List<Meal> _list = [
    Meal(
      id: 'm1',
      title: 'Lavash',
      imageUrl: 'assets/images/lavash.jpg',
      description: 'Ajoyib lavash',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 10,
      price: 12,
      categoryId: 'c1',
    ),
    Meal(
      id: 'm2',
      title: 'Burger',
      imageUrl: 'assets/images/burger.jpg',
      description: 'Ajoyib burger',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 15,
      price: 15,
      categoryId: 'c1',
    ),
    Meal(
      id: 'm3',
      title: 'Osh',
      imageUrl: 'assets/images/uzbekplov.jpg',
      description: 'Ajoyib Osh',
      ingredients: ["go'sht", "guruch", "sabzi"],
      preparingTime: 10,
      price: 20,
      categoryId: 'c2',
    ),
    Meal(
      id: 'm4',
      title: 'Somsa',
      imageUrl: 'assets/images/somsa.jpg',
      description: 'Ajoyib Somsa',
      ingredients: ["go'sht", "piyoz", "tuz"],
      preparingTime: 15,
      price: 5,
      categoryId: 'c2',
    ),
    Meal(
      id: 'm5',
      title: 'Pizza',
      imageUrl: 'assets/images/pizza.jpg',
      description: 'Ajoyib Pizza',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 15,
      price: 5,
      categoryId: 'c3',
    ),
    Meal(
      id: 'm6',
      title: 'Coca cola',
      imageUrl: 'assets/images/cola.jpg',
      description: 'Ajoyib Coca cola',
      ingredients: [],
      preparingTime: 1,
      price: 1,
      categoryId: 'c5',
    ),
    Meal(
      id: 'm7',
      title: 'Mauntain Dew',
      imageUrl: 'assets/images/mdew.jpg',
      description: 'Ajoyib Mauntain Dew',
      ingredients: [],
      preparingTime: 1,
      price: 1,
      categoryId: 'c5',
    ),
    Meal(
      id: 'm8',
      title: 'Nicoise',
      imageUrl: 'assets/images/nicoise.jpg',
      description: 'Ajoyib Nicoise salati',
      ingredients: ["kartoshka", "tuxum", "pomidor"],
      preparingTime: 10,
      price: 15,
      categoryId: 'c6',
    ),
  ];
  List<Meal> get list {
    return _list;
  }
}
