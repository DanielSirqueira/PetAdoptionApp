import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class PetGalleryImageWidget extends StatelessWidget {
  final String image;
  const PetGalleryImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      width: Resposivity.automatic(70, mediaQueryData),
      height: Resposivity.automatic(70, mediaQueryData),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: AppTheme.text2,
        ),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
