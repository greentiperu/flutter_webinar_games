import 'package:flutter/material.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    this.seeAll = false,
    required this.title,
  }) : super(key: key);

  final bool seeAll;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: AppColors.kPrimary,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            seeAll
                ? const Text(
                    "See all",
                    style: TextStyle(
                      color: AppColors.kSecondary,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : const SizedBox(),
          ],
        ));
  }
}
