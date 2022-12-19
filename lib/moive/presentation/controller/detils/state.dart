import 'package:equatable/equatable.dart';

import '../../../core/utils/enums.dart';
import '../../../domain/entites/moive_details.dart';
import '../../../domain/entites/recommendation_enities.dart';

class MoivesDetialState extends Equatable {
  final RequestState statemoiveDetialsRequest;
  final MoiveDetialsEnities moiveDetials;
  final RequestState statemRecommendationRequest;
  final List<RecommendationEnities> recommendationEnities;

  const MoivesDetialState({
    this.moiveDetials = const MoiveDetialsEnities(
        backdropPath: "",
        genres: [],
        id: 610150,
        overview: "",
        releaseDate: "",
        runtime: 0,
        title: "",
        voteAverage: 0.0),
    this.statemoiveDetialsRequest = RequestState.loading,
    this.recommendationEnities = const [
      RecommendationEnities(
          backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
    ],
    this.statemRecommendationRequest = RequestState.loading,
  });

  MoivesDetialState copyWith(
      {RequestState? statemoiveDetialsRequest,
      MoiveDetialsEnities? moiveDetials,
      RequestState? statemRecommendationRequest,
      List<RecommendationEnities>? recommendationEnities}) {
    return MoivesDetialState(
        statemoiveDetialsRequest:
            statemoiveDetialsRequest ?? this.statemoiveDetialsRequest,
        moiveDetials: moiveDetials ?? this.moiveDetials,
        statemRecommendationRequest:
            statemRecommendationRequest ?? this.statemRecommendationRequest,
        recommendationEnities:
            recommendationEnities ?? this.recommendationEnities);
  }

  @override
  List<Object?> get props => [
        statemoiveDetialsRequest,
        moiveDetials,
        statemRecommendationRequest,
        recommendationEnities
      ];
}
