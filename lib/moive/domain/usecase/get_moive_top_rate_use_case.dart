// import 'package:ecommarce/moive/data/network/failure.dart';
// import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommarce/moive/domain/entites/moive_entites.dart';
import 'package:ecommarce/moive/domain/repository/repository.dart';

import '../../core/error/faliure.dart';
import 'base_use_case.dart';

class MoiveTopRateUseCase extends BaseUseCase<void, List<MoiveEntites>> {
  MoiveRepository _moiveRepository;

  MoiveTopRateUseCase(this._moiveRepository);

  @override
  Future<Either<Failure, List<MoiveEntites>>> execute(void input) async {
    return await _moiveRepository.getMoiveTopRate();
  }
}
