import 'package:clean_architecture_tdd_courese/core/error/failure.dart';
import 'package:clean_architecture_tdd_courese/fetatures/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int num) async {
    return right(NumberTrivia(number: 1, text: 'text'));
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return right(NumberTrivia(number: 1, text: 'text'));
  }
}
