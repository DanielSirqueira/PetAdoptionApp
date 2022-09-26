import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/pages/components/pet_gallery_images_widget.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class GalleryImagesWidget extends StatelessWidget {
  final Color color;
  final String image;
  final List<String> galleryImage;

  const GalleryImagesWidget({
    super.key,
    required this.image,
    required this.galleryImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Row(
      children: [
        Container(
          width: Resposivity.automatic(90, mediaQueryData),
          height: Resposivity.automatic(347, mediaQueryData),
          padding:
              EdgeInsets.only(left: Resposivity.automatic(20, mediaQueryData)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView.builder(
                itemCount: galleryImage.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: PetGalleryImageWidget(image: galleryImage[index]),
                  );
                },
              ),
              Container(
                height: Resposivity.automatic(60, mediaQueryData),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(0, 255, 255, 255),
                      Theme.of(context).backgroundColor,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    Resposivity.automatic(100, mediaQueryData))),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  right: (mediaQueryData.size.width * 0.3) * -1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
