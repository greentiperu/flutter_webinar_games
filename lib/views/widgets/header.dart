import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 60.0,
        bottom: 20.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 26.0,
            backgroundImage: NetworkImage(
                "https://blog.photofeeler.com/wp-content/uploads/2017/09/tinder-photo-size-tinder-picture-size-tinder-aspect-ratio-image-dimensions-crop.jpg"),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome back,",
                style: TextStyle(
                  color: AppColors.kSecondary,
                  fontSize: 12.0,
                ),
              ),
              Text(
                "Gustavo Quino",
                style: TextStyle(
                  color: AppColors.kPrimary,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
           CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset("assets/icons/ico_notification.svg"),
          ),
        ],
      ),
    );
  }
}
