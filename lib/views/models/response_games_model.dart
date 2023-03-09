class ResponseGamesModel {
    ResponseGamesModel({
        required this.game,
    });

    List<Game> game;

    factory ResponseGamesModel.fromJson(Map<String, dynamic> json) => ResponseGamesModel(
        game: List<Game>.from(json["game"].map((x) => Game.fromJson(x))),
    );
}

class Game {
    Game({
        required this.id,
        required this.title,
        required this.subtitle,
        required this.path,
    });

    int id;
    String title;
    String subtitle;
    String path;

    factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        path: json["path"],
    );

}