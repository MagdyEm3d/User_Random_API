class UserRandomModel {
  List<dynamic> results;

  UserRandomModel({required this.results});

  factory UserRandomModel.jsonform(Map<String, dynamic> json) {
    return UserRandomModel(results: json["results"] ?? []);
  }
}
