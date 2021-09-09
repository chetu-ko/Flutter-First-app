class FeedModel {
  String name;
  String description;
  String imageUrl;

  FeedModel({this.name, this.description, this.imageUrl});

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJosn() => {
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
      };
}
