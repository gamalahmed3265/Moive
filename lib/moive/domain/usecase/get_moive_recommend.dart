import 'package:ecommarce/moive/core/error/faliure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommarce/moive/domain/entites/recommendation_enities.dart';
import 'package:ecommarce/moive/domain/repository/repository.dart';
import 'package:ecommarce/moive/domain/usecase/base_use_case.dart';

class MoiveRecommendUseCase
    extends BaseUseCase<int, List<RecommendationEnities>> {
  MoiveRepository _moiveRepository;

  MoiveRecommendUseCase(this._moiveRepository);
  @override
  Future<Either<Failure, List<RecommendationEnities>>> execute(
      int input) async {
    return await _moiveRepository.getMoiveRecommend(input);
  }
}
