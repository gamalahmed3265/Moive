import 'package:dartz/dartz.dart';
import 'package:ecommarce/moive/core/error/exception.dart';
import 'package:ecommarce/moive/core/error/faliure.dart';
import 'package:ecommarce/moive/domain/entites/moive_details.dart';
import 'package:ecommarce/moive/domain/entites/moive_entites.dart';
import 'package:ecommarce/moive/domain/entites/recommendation_enities.dart';

import '../../domain/repository/repository.dart';
import '../data_source/remote_data_source.dart';

class MoiveRepositoryImp extends MoiveRepository {
  final RemoteDataSource remoteDataSource;

  MoiveRepositoryImp(this.remoteDataSource);
  @override
  Future<Either<Failure, List<MoiveEntites>>> getMoiveNowPlaying() async {
    final response = await remoteDataSource.getMoiveNowPlaying();

    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.failure.status_message));
    }
  }

  @override
  Future<Either<Failure, List<MoiveEntites>>> getMoivePopular() async {
    final response = await remoteDataSource.getMoivePopular();
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.failure.status_message));
    }
  }

  @override
  Future<Either<Failure, List<MoiveEntites>>> getMoiveTopRate() async {
    final response = await remoteDataSource.getMoiveTopRate();
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.failure.status_message));
    }
  }

  @override
  Future<Either<Failure, MoiveDetialsEnities>> getMoiveMoiveDetials(
      int idOfMoive) async {
    final response = await remoteDataSource.getMoiveMoiveDetials(idOfMoive);
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.failure.status_message));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationEnities>>> getMoiveRecommend(
      int idOfMoive) async {
    final response = await remoteDataSource.getMoiveRecommend(idOfMoive);
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.failure.status_message));
    }
  }
}
