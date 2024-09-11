import 'package:clean_architecture_tdd_courese/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call({required Params params});
}
