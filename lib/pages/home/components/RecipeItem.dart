import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:delicius_recipes/models/Recipe.dart';
import 'package:delicius_recipes/pages/home/detail_page/RecipeDetails.dart';
import 'package:delicius_recipes/utils/border_box.dart';
import 'package:delicius_recipes/utils/constants.dart';
import 'package:delicius_recipes/utils/widget_functions.dart';
import 'package:flutter_svg/svg.dart';

class RecipeItem extends StatefulWidget {
  final Recipe recipe;
  const RecipeItem({super.key, required this.recipe});

  @override
  State<RecipeItem> createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {
  Icon favoriteIcon =
      const Icon(Icons.favorite_border_outlined, color: COLOR_BLUE);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            widget.recipe.name,
            style: themeData.textTheme.headline3,
            textAlign: TextAlign.center,
          ),
        ),
        addVerticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
                initialRating: widget.recipe.rating,
                ignoreGestures: true,
                direction: Axis.horizontal,
                allowHalfRating: true,
                maxRating: 5,
                itemCount: 5,
                itemSize: 20,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: COLOR_BLUE,
                    ),
                onRatingUpdate: (rating) {
                  // ignore: avoid_returning_null_for_void
                  return null;
                }),
            addHorizontalSpace(8),
            Text(
              widget.recipe.rating.toString(),
              style: themeData.textTheme.headline5
                  ?.copyWith(color: COLOR_GREY, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        addVerticalSpace(20),
        Stack(
          children: [
            ClipRRect(
              child: InkWell(
                child: SvgPicture.asset(
                  widget.recipe.image,
                  // height: 280,
                  width: 400,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) =>
                          RecipeDetails(recipe: widget.recipe))));
                },
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: BorderBox(
                press: () {
                  // favorite function
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
        addVerticalSpace(25),
        const Divider(
          color: COLOR_BLUE,
          thickness: 2,
        ),
      ],
    );
  }
}
