import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        bottom: 20.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/ico_search.svg",
            width: 20.0,
            color: AppColors.kPrimary,
          ),
          const SizedBox(width: 5.0),
          const Text(
            "Search games",
            style: TextStyle(color: AppColors.kSecondary),
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/ico_setting.svg",
            width: 20.0,
            color: AppColors.kPrimary,
          ),
        ],
      ),
    );
  }
}
