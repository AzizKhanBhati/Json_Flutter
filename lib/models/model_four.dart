class ModelFour {
  ModelFour({
    required this.id,
    required this.name,
    required this.images,
  });

  int id;
  String name;
  List<Image> images;

  factory ModelFour.fromJson(Map<String, dynamic> json) => ModelFour(
        id: json["id"],
        name: json["name"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );
}

class Image {
  Image({
    required this.id,
    required this.imageName,
  });

  int id;
  String imageName;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        imageName: json["imageName"],
      );
}
