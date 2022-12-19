import 'package:ecommarce/moive/domain/entites/recommendation_enities.dart';

class RecommendationModel extends RecommendationEnities {
  const RecommendationModel({required super.backdropPath, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(backdropPath: json["backdrop_path"], id: json["id"]);
}
