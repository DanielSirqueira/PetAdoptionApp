import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/models/animal_model.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';
import 'package:pet_adoption_app/app/modules/home/utils/routes.dart';

class CardAnimalWidget extends StatelessWidget {
  final AnimalModel animalModel;

  const CardAnimalWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(AppRouter.details, arguments: animalModel),
      child: Container(
        padding: EdgeInsets.only(
          top: Resposivity.automatic(20, mediaQuery),
          left: Resposivity.automatic(8, mediaQuery),
          bottom: Resposivity.automatic(20, mediaQuery),
          right: Resposivity.automatic(20, mediaQuery),
        ),
        width: Resposivity.automatic(318, mediaQuery),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Resposivity.automatic(100, mediaQuery),
              decoration: BoxDecoration(
                color: animalModel.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(animalModel.mainImage),
            ),
            SizedBox(
              width: Resposivity.automatic(130, mediaQuery),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animalModel.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    animalModel.breed,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${animalModel.sex}, ${animalModel.age}',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        size: Resposivity.automatic(16, mediaQuery),
                        Icons.location_pin,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        animalModel.localization,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: animalModel.favorite
                  ? Icon(
                      Icons.favorite,
                      color: Theme.of(context).primaryColor,
                      size: Resposivity.automatic(24, mediaQuery),
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).primaryColor,
                      size: Resposivity.automatic(24, mediaQuery),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
