import 'package:clean_architecture_tdd_courese/fetatures/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_courese/fetatures/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetRandomNumTrivia usecase;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumTrivia(repository: mockNumberTriviaRepository);
  });

  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get random number trivia', () async {
    //arrange
    when(() => mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => const Right(tNumberTrivia));
  });

  // act
  final result = usecase();

  //assert

  expect(result, const Right(tNumberTrivia));
  verify(mockNumberTriviaRepository.getRandomNumberTrivia());
  verifyNoMoreInteractions(mockNumberTriviaRepository);
}
