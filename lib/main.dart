// ignore_for_file: use_key_in_widget_constructors, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:delicius_recipes/pages/NavBar.dart';
import 'package:delicius_recipes/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delicius Tasty',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        textTheme: TEXT_THEME_DEFAULT,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR_BLUE),
      ),
      home: const NavBar(),
    );
  }
}
