import 'package:flutter/material.dart';
import 'package:delicius_recipes/models/Recipe.dart';
import 'package:delicius_recipes/utils/border_box.dart';
import 'package:delicius_recipes/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:delicius_recipes/utils/widget_functions.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  RecipeDetails({
    super.key,
    required this.recipe,
  });

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  Icon favoriteIcon = const Icon(
    Icons.favorite_border_outlined,
    color: COLOR_BLUE,
  );
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      color: COLOR_WHITE,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                // borderRadius: BorderRadius.circular(100),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SvgPicture.asset(
                  widget.recipe.image,
                  // height: 280,
                  width: 400,
                ),
              ),
              Positioned(
                top: 30,
                left: 15,
                child: BorderBox(
                  press: () {
                    Navigator.pop(context);
                  },
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.arrow_back,
                    color: COLOR_BLUE,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 15,
                child: BorderBox(
                  press: () {
                    //favorite function
                    setState(() {
                      if (favoriteIcon.icon == Icons.favorite_border_outlined) {
                        favoriteIcon = const Icon(
                          Icons.favorite,
                          color: COLOR_BLUE,
                        );
                        widget.recipe.favorite = true;
                      } else {
                        favoriteIcon = const Icon(
                          Icons.favorite_border_outlined,
                          color: COLOR_BLUE,
                        );
                        widget.recipe.favorite = false;
                      }
                    });
                  },
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(5),
                  child: (widget.recipe.favorite == true)
                      ? const Icon(
                          Icons.favorite,
                          color: COLOR_BLUE,
                        )
                      : const Icon(
                          Icons.favorite_outline_outlined,
                          color: COLOR_BLUE,
                        ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recipe.category,
                      style: themeData.textTheme.headline5
                          ?.copyWith(color: COLOR_GREY),
                    ),
                    Text(widget.recipe.favorite.toString()),
                    addVerticalSpace(5),
                    Text(
                      widget.recipe.name,
                      style: themeData.textTheme.headline6,
                      textAlign: TextAlign.justify,
                    ),
                    addVerticalSpace(5),
                    const Divider(color: COLOR_BLACK),
                    addVerticalSpace(5),
                    Text(
                      'Ingredientes',
                      style: themeData.textTheme.headline3,
                    ),
                    addVerticalSpace(5),
                    Text(
                      widget.recipe.ingredients,
                      style: themeData.textTheme.bodyText1?.copyWith(
                        wordSpacing: 3,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    addVerticalSpace(5),
                    const Divider(color: COLOR_BLACK),
                    addVerticalSpace(5),
                    Text(
                      'Modo de fazer',
                      style: themeData.textTheme.headline3,
                    ),
                    addVerticalSpace(5),
                    Text(
                      widget.recipe.how,
                      style: themeData.textTheme.bodyText1,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
