import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/models/animal_model.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/card_animal_widget.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/category_widget.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/sliver_app_bar_widget.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: AppTheme.backgroundContainer,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(),
          SliverToBoxAdapter(
            child: Container(
              color: Theme.of(context).cardColor,
              height: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: AppTheme.backgroundContainer,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              height: Resposivity.automatic(46, mediaQueryData),
              child: ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: Resposivity.automatic(20, mediaQueryData)),
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryWidget(title: '', iconData: Icons.tune),
                  CategoryWidget(
                    title: 'Dogs',
                    iconData: Icons.pets_outlined,
                    selected: true,
                  ),
                  CategoryWidget(
                    title: 'Cats',
                    iconData: Icons.pets_outlined,
                  ),
                  CategoryWidget(
                    title: 'Birds',
                    iconData: Icons.pets_outlined,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: animalList.length,
                (_, index) {
                  final animalModel = animalList[index];
                  return Column(
                    children: [
                      CardAnimalWidget(animalModel: animalModel),
                      const SizedBox(height: 20),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
