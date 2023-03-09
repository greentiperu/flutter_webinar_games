import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 90.0,
        padding: EdgeInsets.all(15.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/icons/ico_explore.svg",
              color: AppColors.kBase,
            ),
            SvgPicture.asset(
              "assets/icons/ico_play.svg",
              color: AppColors.kSecondary,
            ),
            const CircleAvatar(
              backgroundColor: AppColors.kBase,
              child: Icon(Icons.add,color: Colors.white),
            ),
            SvgPicture.asset(
              "assets/icons/ico_live.svg",
              color: AppColors.kSecondary,
            ),
            SvgPicture.asset(
              "assets/icons/ico_square.svg",
              color: AppColors.kSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
