import 'package:dartz/dartz.dart';
import 'package:ecommarce/moive/core/error/faliure.dart';
import 'package:ecommarce/moive/domain/entites/moive_details.dart';
import 'package:ecommarce/moive/domain/entites/moive_entites.dart';
import 'package:ecommarce/moive/domain/entites/recommendation_enities.dart';

abstract class MoiveRepository {
  Future<Either<Failure, List<MoiveEntites>>> getMoiveNowPlaying();
  Future<Either<Failure, List<MoiveEntites>>> getMoivePopular();
  Future<Either<Failure, List<MoiveEntites>>> getMoiveTopRate();
  Future<Either<Failure, MoiveDetialsEnities>> getMoiveMoiveDetials(
      int idOfMoive);
  Future<Either<Failure, List<RecommendationEnities>>> getMoiveRecommend(
      int idOfMoive);
}
