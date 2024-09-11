import 'package:clean_architecture_tdd_courese/core/error/failure.dart';
import 'package:clean_architecture_tdd_courese/fetatures/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_courese/fetatures/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/usecases/usecase.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia({required this.repository});

  @override
  Future<Either<Failure, NumberTrivia>> call({required Params params}) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}
