class ModelSix {
  ModelSix({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.author,
    required this.data,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  Author author;
  List<Datum> data;

  factory ModelSix.fromMap(Map<String, dynamic> json) => ModelSix(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        author: Author.fromMap(json["author"]),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );
}

class Author {
  Author({
    required this.firstName,
    required this.lastName,
  });

  String firstName;
  String lastName;

  factory Author.fromMap(Map<String, dynamic> json) => Author(
        firstName: json["first_name"],
        lastName: json["last_name"],
      );
}

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.images,
  });

  int id;
  String firstName;
  String lastName;
  String avatar;
  List<AllImages> images;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
        images: List<AllImages>.from(
            json["images"].map((x) => AllImages.fromMap(x))),
      );
}

class AllImages {
  AllImages({
    required this.id,
    required this.imageName,
  });

  int id;
  String imageName;

  factory AllImages.fromMap(Map<String, dynamic> json) => AllImages(
        id: json["id"],
        imageName: json["imageName"],
      );
}
