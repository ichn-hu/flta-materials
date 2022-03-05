import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;
  const RecipesGridView({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return RecipeThumbnail(recipe: recipe);
        },
        itemCount: recipes.length,
      ),
    );
  }
}
