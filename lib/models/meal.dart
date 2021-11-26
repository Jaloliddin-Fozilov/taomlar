class Meal {
  final String id;
  final String title;
  final List<String> imageUrls;
  final String description;
  final List<String> ingredients;
  final int preparingTime;
  final double price;
  final String categoryId;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrls,
    required this.description,
    required this.ingredients,
    required this.preparingTime,
    required this.price,
    required this.categoryId,
  });
}

class Meals {
  List<Meal> _list = [
    Meal(
      id: 'm1',
      title: 'Lavash',
      imageUrls: [
        'assets/images/lavash.jpg',
        'assets/images/lavash1.jpg',
        'assets/images/lavash2.jpg'
      ],
      description: 'Ajoyib lavash',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 10,
      price: 12,
      categoryId: 'c1',
    ),
    Meal(
      id: 'm2',
      title: 'Burger',
      imageUrls: [
        'assets/images/burger.jpg',
        'assets/images/burger1.jpg',
        'assets/images/burger2.jpg',
        'assets/images/burger3.jpg'
      ],
      description: 'Ajoyib burger',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 15,
      price: 15,
      categoryId: 'c1',
    ),
    Meal(
      id: 'm3',
      title: 'Osh',
      imageUrls: [
        'assets/images/uzbekplov.jpg',
        'assets/images/uzbekplov1.jpg',
        'assets/images/uzbekplov2.jpg',
        'assets/images/uzbekplov3.jpg'
      ],
      description: 'Ajoyib Osh',
      ingredients: ["go'sht", "guruch", "sabzi"],
      preparingTime: 10,
      price: 20,
      categoryId: 'c2',
    ),
    Meal(
      id: 'm4',
      title: 'Somsa',
      imageUrls: [
        'assets/images/somsa.jpg',
        'assets/images/somsa1.jpg',
        'assets/images/somsa2.jpg'
      ],
      description: 'Ajoyib Somsa',
      ingredients: ["go'sht", "piyoz", "tuz"],
      preparingTime: 15,
      price: 5,
      categoryId: 'c2',
    ),
    Meal(
      id: 'm5',
      title: 'Pizza',
      imageUrls: [
        'assets/images/pizza.jpg',
        'assets/images/pizza1.jpg',
        'assets/images/pizza2.jpg',
        'assets/images/pizza3.jpg'
      ],
      description: 'Ajoyib Pizza',
      ingredients: ["go'sht", "pomidor", "bording"],
      preparingTime: 15,
      price: 5,
      categoryId: 'c3',
    ),
    Meal(
      id: 'm6',
      title: 'Coca cola',
      imageUrls: [
        'assets/images/cola.jpg',
        'assets/images/cola1.jpg',
        'assets/images/cola2.jpg',
        'assets/images/cola3.png'
      ],
      description: 'Ajoyib Coca cola',
      ingredients: [],
      preparingTime: 1,
      price: 1,
      categoryId: 'c5',
    ),
    Meal(
      id: 'm7',
      title: 'Mauntain Dew',
      imageUrls: ['assets/images/mdew.jpg', 'assets/images/mdew1.jpg'],
      description: 'Ajoyib Mauntain Dew',
      ingredients: [],
      preparingTime: 1,
      price: 1,
      categoryId: 'c5',
    ),
    Meal(
      id: 'm8',
      title: 'Nicoise',
      imageUrls: ['assets/images/nicoise.jpg', 'assets/images/nicoise1.jpg'],
      description: 'Ajoyib Nicoise salati',
      ingredients: ["kartoshka", "tuxum", "pomidor"],
      preparingTime: 10,
      price: 15,
      categoryId: 'c6',
    ),
    Meal(
      id: 'm9',
      title: 'Salatlar',
      imageUrls: [
        'assets/images/salat.jpg',
        'assets/images/salat1.jpg',
        'assets/images/salat2.jpg',
        'assets/images/salat3.jpg'
      ],
      description: 'Ajoyib salatlar',
      ingredients: ["kartoshka", "tuxum", "pomidor"],
      preparingTime: 10,
      price: 15,
      categoryId: 'c4',
    ),
  ];

  List<Meal> _favorites = [];

  List<Meal> get list {
    return _list;
  }

  List<Meal> get favorites {
    return _favorites;
  }

  void toggleLike(String mealId) {
    final mealIndex = _favorites.indexWhere((meal) => meal.id == mealId);
    if (mealIndex < 0) {
      _favorites.add(list.firstWhere((meal) => meal.id == mealId));
    } else {
      _favorites.removeWhere((meal) => meal.id == mealId);
    }
  }

  void addNewMeal(Meal meal) {
    _list.add(meal);
  }
}
