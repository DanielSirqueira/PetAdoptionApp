import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/pages/home_page.dart';
import 'package:pet_adoption_app/app/modules/home/pages/pet_details_page.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.home,
      theme: AppTheme.themeData(),
      routes: {
        AppRouter.home: (context) => const HomePage(),
        AppRouter.details: (context) => const PetDatailsPage(),
      },
    );
  }
}
