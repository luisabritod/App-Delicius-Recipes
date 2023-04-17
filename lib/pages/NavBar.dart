// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:delicius_recipes/pages/home/Home.dart';
import 'package:delicius_recipes/pages/my_recips/MyRecips.dart';
import 'package:delicius_recipes/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _HomePageState();
}

class _HomePageState extends State<NavBar> {
  int _selectButton = 0;
  Icon customIcon = const Icon(Icons.search, size: 30);
  Widget customSearchBar = const Text('Delicius Tasty');
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: COLOR_BLUE,
        centerTitle: false,
        leading: SvgPicture.asset(
          'assets/images/icon.svg',
          color: COLOR_WHITE,
        ),
        automaticallyImplyLeading: false,
        title: customSearchBar,
        actions: [
          IconButton(
            icon: customIcon,
            padding: const EdgeInsets.only(right: 10),
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  //perform set of intructions
                  customIcon = const Icon(
                    Icons.cancel,
                  );
                  customSearchBar = ListTile(
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: COLOR_WHITE,
                          size: 30,
                        )),
                    title: const TextField(
                      // onChanged: ,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: 'digite uma receita...',
                        hintStyle: TextStyle(
                            color: COLOR_WHITE,
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: COLOR_WHITE, fontSize: 22),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = Text('Delicius Tasty',
                      style: themeData.textTheme.headlineLarge);
                }
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: COLOR_BLUE,
        unselectedItemColor: COLOR_GREY,
        currentIndex: _selectButton,
        onTap: (value) {
          setState(() => _selectButton = value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'My Recipes',
            activeIcon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectButton,
        children: const <Widget>[
          Home(),
          MyRecipes(),
        ],
      ),
    );
  }
}
