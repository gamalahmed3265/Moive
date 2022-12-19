import 'package:ecommarce/moive/domain/entites/moive_entites.dart';

class MoiveModel extends MoiveEntites {
  const MoiveModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate});

  factory MoiveModel.fromJson(Map<String, dynamic> json) => MoiveModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
      overview: json["overview"],
      voteAverage: json["vote_average"].toDouble(),
      releaseDate: json["release_date"]);
}
