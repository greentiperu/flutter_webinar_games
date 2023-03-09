class ResponseNewGameModel {
    ResponseNewGameModel({
        required this.newGame,
    });

    List<NewGame> newGame;

    factory ResponseNewGameModel.fromJson(Map<String, dynamic> json) => ResponseNewGameModel(
        newGame: List<NewGame>.from(json["newGame"].map((x) => NewGame.fromJson(x))),
    );
}

class NewGame {
    NewGame({
        required this.id,
        required this.title,
        required this.subtitle,
        required this.path,
    });

    int id;
    String title;
    String subtitle;
    String path;

    factory NewGame.fromJson(Map<String, dynamic> json) => NewGame(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        path: json["path"],
    );
}