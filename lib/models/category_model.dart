class MealCategory {
  final String id;
  final String title;
  final String imageUrl;

  const MealCategory({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  factory MealCategory.fromJson(Map<String, dynamic> json) {
    return MealCategory(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'imageUrl': imageUrl};
  }
}
