import 'package:flutter/material.dart';
import 'package:delicius_recipes/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;
  final void Function() press;

  const BorderBox({
    super.key,
    required this.child,
    required this.padding,
    required this.width,
    required this.height,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: COLOR_BLUE, width: 1),
        ),
        padding: padding,
        child: Center(child: child),
      ),
    );
  }
}
