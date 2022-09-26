import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class AdoptBottomNavigationBarWidget extends StatelessWidget {
  const AdoptBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: Resposivity.automatic(220, mediaQueryData),
          height: 77,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(54),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pets,
                  color: Theme.of(context).backgroundColor,
                  size: Resposivity.automatic(24, mediaQueryData),
                ),
                SizedBox(width: Resposivity.automatic(18, mediaQueryData)),
                Text(
                  'ADOPT',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
