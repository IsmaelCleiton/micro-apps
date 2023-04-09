import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';
import 'package:calculator/app/modules/main/domain/usecases/calculate_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var usecase = const CalculateUsecase();

  test('Quero ', () async {
    var result = await usecase(
        const ExpressionEntity(numbers: [2, 2], operators: ['+']));
    expect(result, isA<double>());
  });
}
