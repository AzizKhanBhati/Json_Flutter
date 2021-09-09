class ModelOne {
  final String name;
  final String age;
  final String country;
  final String state;
  final String city;

  ModelOne(
      {required this.name,
      required this.age,
      required this.country,
      required this.state,
      required this.city});

  factory ModelOne.fromJson(Map<String, dynamic> parsedJson) {
    return ModelOne(
        name: parsedJson["name"],
        age: parsedJson["age"],
        country: parsedJson["country"],
        state: parsedJson["state"],
        city: parsedJson["city"]);
  }
}
