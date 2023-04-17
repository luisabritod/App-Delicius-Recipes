// ignore_for_file: depend_on_referenced_packages, file_names, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:delicius_recipes/data/RecipeRepository.dart';
import 'package:delicius_recipes/pages/home/components/widgets.dart';
import 'package:delicius_recipes/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController scrollCont = ScrollController();
  late BuildContext? tabContext;
  final List<GlobalKey> categorias = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  void initState() {
    scrollCont = ScrollController();
    scrollCont.addListener(changeTabs);
    super.initState();
  }

  changeTabs() {
    RenderBox box;

    for (var i = 0; i < categorias.length; i++) {
      box = categorias[i].currentContext?.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);
      if (scrollCont.offset >= position.dy) {
        DefaultTabController.of(tabContext!)?.animateTo(
          i,
          duration: const Duration(milliseconds: 100),
        );
      }
    }
  }

  scrollTo(int index) async {
    scrollCont.removeListener(changeTabs);
    final categoria = categorias[index].currentContext!;
    await Scrollable.ensureVisible(
      categoria,
      duration: const Duration(milliseconds: 600),
    );
    scrollCont.addListener(changeTabs);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return DefaultTabController(
      length: categorias.length,
      child: Builder(
        builder: (BuildContext context) {
          tabContext = context;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: COLOR_WHITE,
              toolbarHeight: 0,
              elevation: 0,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: COLOR_BLUE,
                labelColor: COLOR_GREY,
                labelStyle: themeData.textTheme.headline4,
                tabs: const [
                  TabBuilder(categoryName: 'Bolos'),
                  TabBuilder(categoryName: 'Doces'),
                  TabBuilder(categoryName: 'Lanches'),
                  TabBuilder(categoryName: 'Pães'),
                  TabBuilder(categoryName: 'Peixes'),
                  TabBuilder(categoryName: 'Salada'),
                  TabBuilder(categoryName: 'Saudável'),
                ],
                onTap: (index) => scrollTo(index),
              ),
            ),
            body: Container(
              color: COLOR_WHITE,
              child: SingleChildScrollView(
                controller: scrollCont,
                child: Column(
                  children: [
                    RecipeCategory(
                      titulo: 'Bolos',
                      index: 0,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.bolos),
                    RecipeCategory(
                      titulo: 'Doces e sobremesas',
                      index: 1,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.doces),
                    RecipeCategory(
                      titulo: 'Lanches',
                      index: 2,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.lanches),
                    RecipeCategory(
                      titulo: 'Pães',
                      index: 3,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.paes),
                    RecipeCategory(
                      titulo: 'Peixes e frutos do mar',
                      index: 4,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.peixes),
                    RecipeCategory(
                      titulo: 'Salada',
                      index: 5,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.salada),
                    RecipeCategory(
                      titulo: 'Saudável',
                      index: 6,
                      categorias: categorias,
                    ),
                    RecipeListBuilder(recipes: RecipeRepository.saudavel),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabBuilder extends StatelessWidget {
  // final Recipe recipe;required this.recipe
  final String categoryName;
  const TabBuilder({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(categoryName),
    );
  }
}
