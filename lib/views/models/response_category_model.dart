class ResponseCategoryModel {
    ResponseCategoryModel({
        required this.category,
    });

    List<Category> category;

    factory ResponseCategoryModel.fromJson(Map<String, dynamic> json) => ResponseCategoryModel(
        category: List<Category>.from(json["category"].map((x) => Category.fromJson(x))),
    );
}

class Category {
    Category({
        required this.id,
        required this.name,
        required this.icon,
    });

    int id;
    String name;
    String icon;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
    );
}
