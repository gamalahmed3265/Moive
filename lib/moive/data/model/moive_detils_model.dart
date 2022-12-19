import 'package:ecommarce/moive/data/model/genres_model.dart';

import '../../domain/entites/moive_details.dart';

class MoiveDetialsModel extends MoiveDetialsEnities {
  const MoiveDetialsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MoiveDetialsModel.fromJson(Map<String, dynamic> json) =>
      MoiveDetialsModel(
          backdropPath: json["backdrop_path"],
          genres: List.from(json["genres"].map((e) => GenresModel.fromJson(e))),
          id: json["id"],
          overview: json["overview"],
          releaseDate: json["release_date"],
          runtime: json["runtime"],
          title: json["title"],
          voteAverage: json["vote_average"]);
}
