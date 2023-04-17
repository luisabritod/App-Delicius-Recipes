// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(116, 115, 115, 1);

const COLOR_WHITE = Colors.white;
const COLOR_BLUE = Color.fromRGBO(114, 130, 194, 1);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headlineLarge: TextStyle(
        color: COLOR_WHITE,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: 'Roboto-Black'),
    headline1: TextStyle(
      color: COLOR_BLACK,
      fontWeight: FontWeight.w700,
      fontSize: 26,
    ),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.bold, fontSize: 22),
    headline3:
        TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    bodyText1: TextStyle(
      color: COLOR_GREY,
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    headline6:
        TextStyle(color: COLOR_BLUE, fontSize: 28, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));
