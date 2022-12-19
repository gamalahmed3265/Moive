import 'package:ecommarce/moive/core/error/faliure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommarce/moive/domain/entites/moive_details.dart';
import 'package:ecommarce/moive/domain/repository/repository.dart';
import 'package:ecommarce/moive/domain/usecase/base_use_case.dart';

class MoiveDetialsUseCase extends BaseUseCase<int, MoiveDetialsEnities> {
  MoiveRepository _moiveRepository;

  MoiveDetialsUseCase(this._moiveRepository);
  @override
  Future<Either<Failure, MoiveDetialsEnities>> execute(int input) async {
    return await _moiveRepository.getMoiveMoiveDetials(input);
  }
}
