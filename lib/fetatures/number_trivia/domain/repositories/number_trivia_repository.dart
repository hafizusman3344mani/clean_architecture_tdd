import 'package:clean_architecture_tdd_courese/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/number_trivia.dart';

abstract interface class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int num);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
