import 'package:ecommarce/moive/domain/entites/genres_enties.dart';

class GenresModel extends GenresEnities {
  const GenresModel({required super.id, required super.name});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      GenresModel(id: json["id"], name: json["name"]);
}
