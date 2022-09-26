import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/images.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SliverAppBar(
      toolbarHeight: 120,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: AppTheme.text,
              size: Resposivity.automatic(26, mediaQueryData),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Resposivity.automatic(8, mediaQueryData)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Location',
                    style: TextStyle(
                      color: AppTheme.text2,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Cameron St., Boston',
                    style: TextStyle(
                      color: AppTheme.text,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: Resposivity.automatic(44, mediaQueryData),
            height: Resposivity.automatic(44, mediaQueryData),
            child: const CircleAvatar(
              backgroundImage: AssetImage(Images.user100x100),
            ),
          )
        ],
      ),
      floating: false,
    );
  }
}
