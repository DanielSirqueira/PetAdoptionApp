import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/models/animal_model.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/adopt_bottom_navigation_bar_widget.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/gallery_images_widget.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class PetDatailsPage extends StatelessWidget {
  const PetDatailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalModel animalModel =
        ModalRoute.of(context)!.settings.arguments as AnimalModel;

    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppTheme.text,
                )),
            actions: [
              IconButton(
                onPressed: () {},
                icon: animalModel.favorite
                    ? Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: AppTheme.icons,
                      ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Resposivity.automatic(20, mediaQueryData)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            animalModel.name,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          const Icon(
                            Icons.male_outlined,
                            color: AppTheme.text2,
                            size: 32,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            animalModel.breed,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            animalModel.age,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            size: 18,
                            Icons.location_pin,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text(
                            animalModel.localization,
                            style: const TextStyle(
                                color: AppTheme.text2,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GalleryImagesWidget(
                  image: animalModel.featuredImage,
                  galleryImage: animalModel.images,
                  color: animalModel.color,
                ),
                const SizedBox(height: 20),
                AboutWidget(about: animalModel.about)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const AdoptBottomNavigationBarWidget(),
    );
  }
}

class AboutWidget extends StatelessWidget {
  final String about;
  const AboutWidget({
    super.key,
    required this.about,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Resposivity.automatic(20, mediaQueryData),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              color: AppTheme.text,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            about,
            style: const TextStyle(
              color: AppTheme.text2,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
