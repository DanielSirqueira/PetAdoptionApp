import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/home/themes/app_theme.dart';
import 'package:pet_adoption_app/app/modules/home/utils/resposivity.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool selected;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.iconData,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.all(Resposivity.automatic(12, mediaQuery)),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: !selected
            ? Theme.of(context).backgroundColor
            : Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color:
                !selected ? AppTheme.icons : Theme.of(context).backgroundColor,
            size: Resposivity.automatic(24, mediaQuery),
          ),
          title.isNotEmpty
              ? Container(
                  margin: EdgeInsets.only(
                    left: Resposivity.automatic(8, mediaQuery),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: !selected
                          ? AppTheme.text
                          : Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
