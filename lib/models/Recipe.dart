// ignore_for_file: file_names

class Recipe {
  final String category, image, name, ingredients, how;
  final double rating;
  bool favorite;
  Recipe({
    required this.category,
    required this.image,
    required this.name,
    required this.ingredients,
    required this.how,
    required this.rating,
    this.favorite = false,
  });
}
