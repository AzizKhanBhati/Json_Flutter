class ModelTwo {
  ModelTwo({
    required this.city,
    required this.streets,
  });

  String city;
  List<String> streets;

  factory ModelTwo.fromJson(Map<String, dynamic> json) => ModelTwo(
        city: json["city"],
        streets: List<String>.from(json["streets"].map((x) => x)),
      );
}
