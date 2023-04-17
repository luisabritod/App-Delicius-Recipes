import 'package:flutter/material.dart';
import 'package:delicius_recipes/models/Recipe.dart';
import 'RecipeItem.dart';

class RecipeListBuilder extends StatelessWidget {
  final List<Recipe> recipes;
  const RecipeListBuilder({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: recipes
          .map((recipe) => RecipeItem(
                recipe: recipe,
              ))
          .toList(),
    );
  }
}
