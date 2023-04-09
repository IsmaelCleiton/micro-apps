import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';
import 'package:calculator/app/modules/main/domain/usecases/string_to_expression_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var usecase = const StringToExpressionUsecase();

  test(
      'Quero testar o retorno da expressionEntity ao inserir uma String válida',
      () async {
    var result = await usecase('2333+23-55-2123123*123/64');
    expect(result, isA<ExpressionEntity>());
  });
}
