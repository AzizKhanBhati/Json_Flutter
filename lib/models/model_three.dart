class ModelThree {
  ModelThree({
    required this.shapeName,
    required this.property,
  });

  String shapeName;
  Property property;

  factory ModelThree.fromJson(Map<String, dynamic> json) => ModelThree(
        shapeName: json["shape_name"],
        property: Property.fromJson(json["property"]),
      );
}

class Property {
  Property({
    required this.width,
    required this.height,
  });

  double width;
  double height;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        width: json["width"],
        height: json["breadth"],
      );
}
