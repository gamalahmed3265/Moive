import 'package:equatable/equatable.dart';

class RecommendationEnities extends Equatable {
  final String backdropPath;
  final int id;
  const RecommendationEnities({required this.backdropPath, required this.id});

  @override
  List<Object?> get props => [backdropPath, id];
}
