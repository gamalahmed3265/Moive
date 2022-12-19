import 'package:equatable/equatable.dart';

class MoiveEntites extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const MoiveEntites({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props =>
      [id, title, backdropPath, genreIds, overview, voteAverage, releaseDate];
}








  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is MoiveEntites &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         title == other.title &&
  //         backdropPath == other.backdropPath &&
  //         genreIds == other.genreIds &&
  //         overview == other.overview &&
  //         voteAverage == other.voteAverage;
