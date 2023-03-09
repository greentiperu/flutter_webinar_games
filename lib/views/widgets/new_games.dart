import 'package:flutter/material.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';
import 'package:flutter_webinar_games/views/models/response_new_game_model.dart';

class NewGames extends StatelessWidget {
  const NewGames({
    Key? key,
    required this.newGames,
  }) : super(key: key);

  final List<NewGame> newGames;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: newGames.length,
      itemBuilder: (_, index) => Container(
        margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                newGames[index].path,
                fit: BoxFit.cover,
                width: 160.0,
                height: 100.0,
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newGames[index].title,
                  style: const TextStyle(
                    color: AppColors.kPrimary,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  newGames[index].subtitle,
                  style: const TextStyle(
                    color: AppColors.kPrimary,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "4.5",
                      style:  TextStyle(
                        color: AppColors.kPrimary,
                       fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
