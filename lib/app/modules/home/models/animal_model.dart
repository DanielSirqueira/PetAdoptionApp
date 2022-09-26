import 'package:flutter/animation.dart';
import 'package:pet_adoption_app/app/modules/home/utils/animal_images.dart';

class AnimalModel {
  final String name;
  final String breed;
  final String sex;
  final String age;
  final String localization;
  final bool favorite;
  final String about;
  final String mainImage;
  final String featuredImage;
  final Color color;
  final List<String> images;

  AnimalModel({
    required this.name,
    required this.breed,
    required this.sex,
    required this.age,
    required this.localization,
    required this.favorite,
    required this.about,
    required this.mainImage,
    required this.featuredImage,
    required this.color,
    required this.images,
  });
}

final animalList = <AnimalModel>[
  AnimalModel(
    name: 'Sparky',
    breed: 'Golden Retriever',
    sex: 'Female',
    age: '8 months old',
    localization: '2.5 kms away',
    favorite: true,
    about: _about,
    mainImage: AnimalImages.goldenRetriever7,
    featuredImage: AnimalImages.goldenRetriever2,
    color: const Color(0xFFFEE46B),
    images: [
      AnimalImages.goldenRetriever1,
      AnimalImages.goldenRetriever3,
      AnimalImages.goldenRetriever4,
      AnimalImages.goldenRetriever5,
      AnimalImages.goldenRetriever6,
    ],
  ),
  AnimalModel(
    name: 'Charlie',
    breed: 'Siberian Husky',
    sex: 'Male',
    age: '1.5 years old',
    localization: '2.7 kms away',
    favorite: false,
    about: _about,
    mainImage: AnimalImages.siberianHusky1,
    featuredImage: AnimalImages.siberianHusky2,
    color: const Color(0xFF7FC6E4),
    images: [
      AnimalImages.siberianHusky3,
      AnimalImages.siberianHusky4,
      AnimalImages.siberianHusky4,
      AnimalImages.siberianHusky5,
      AnimalImages.siberianHusky6,
    ],
  ),
  AnimalModel(
    name: 'Max',
    breed: 'Jack Russell Terrier',
    sex: 'Male',
    age: '1 years old',
    localization: '2.7 kms away',
    favorite: true,
    about: _about,
    mainImage: AnimalImages.jackRussellTerrier1,
    featuredImage: AnimalImages.jackRussellTerrier2,
    color: const Color(0xFF89D3D2),
    images: [
      AnimalImages.jackRussellTerrier3,
      AnimalImages.jackRussellTerrier4,
      AnimalImages.jackRussellTerrier5,
    ],
  ),
];

const String _about = '''
She is shy at firt, but will warm up when she´s comfortable. She is not a ranch 
dog that guards animals and property as she would rather be with her peapole.
''';
