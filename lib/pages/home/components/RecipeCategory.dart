import 'package:flutter/material.dart';
import 'package:delicius_recipes/utils/constants.dart';

class RecipeCategory extends StatelessWidget {
  final String titulo;
  final int index;
  List<GlobalKey> categorias;
  RecipeCategory({
    Key? key,
    required this.titulo,
    required this.index,
    required this.categorias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Padding(
      key: categorias[index],
      padding: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 5),
            child: Text(
              titulo,
              style: themeData.textTheme.headline1,
            ),
          ),
          const Divider(
            color: COLOR_BLUE,
            indent: 20,
            endIndent: 20,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
