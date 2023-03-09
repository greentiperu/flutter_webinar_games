import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webinar_games/theme/app_colors.dart';
import 'package:flutter_webinar_games/views/models/response_category_model.dart';
import 'package:flutter_webinar_games/views/models/response_games_model.dart';
import 'package:flutter_webinar_games/views/models/response_new_game_model.dart';
import 'package:flutter_webinar_games/views/widgets/bottom_navigator.dart';
import 'package:flutter_webinar_games/views/widgets/categories.dart';
import 'package:flutter_webinar_games/views/widgets/content_title.dart';
import 'package:flutter_webinar_games/views/widgets/new_games.dart';
import 'package:flutter_webinar_games/views/widgets/trending_games.dart';
import 'package:flutter_webinar_games/views/widgets/header.dart';
import 'package:flutter_webinar_games/views/widgets/search.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Game> games = [];
  List<NewGame> newgames = [];
  List<Category> categories = [];

  @override
  void initState() {
    loadCategory();
    loadTrendingGame();
    loadNewGames();

    super.initState();
  }

  loadTrendingGame() async {
    final response = await loadJsonAssets("assets/json/game.json");
    final result = ResponseGamesModel.fromJson(response);
    games.addAll(result.game);
    setState(() {});
  }

  loadNewGames() async {
    final response = await loadJsonAssets("assets/json/new_games.json");
    final result = ResponseNewGameModel.fromJson(response);
    newgames.addAll(result.newGame);
    setState(() {});
  }

  loadCategory() async {
    final response = await loadJsonAssets("assets/json/category.json");
    final result = ResponseCategoryModel.fromJson(response);
    categories.addAll(result.category);
    setState(() {});
  }

  Future<dynamic> loadJsonAssets(String path) async {
    final response = await rootBundle.loadString(path);
    return json.decode(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
               padding: EdgeInsets.zero,
              children: [
                const Header(),
                const Search(),

                //Caegoria
                const ContentTitle(title: "Categories"),
                Categories(categories: categories),

                //cards Games
                const ContentTitle(
                  title: "Trending Games",
                  seeAll: true,
                ),
                TrendingGames(
                  games: games,
                ),

                const ContentTitle(
                  title: "New Games",
                  seeAll: true,
                ),
                NewGames(
                  newGames: newgames,
                ),
              ],
            ),
          ),
          const BottomNavigator(),
        ],
      ),
    );
  }
}
