import 'package:dartz/dartz.dart';

import '../../core/error/faliure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
