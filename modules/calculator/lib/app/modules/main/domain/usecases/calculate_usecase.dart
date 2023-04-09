import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';

abstract class ICalculateUsecase {
  Future<double> call(ExpressionEntity expression);
}

class CalculateUsecase implements ICalculateUsecase {
  const CalculateUsecase();
// 3-3
  @override
  Future<double> call(ExpressionEntity expression) async {
    List<double> numbers = [];
    List<String> operators = [];

    print(expression.numbers);
    print(expression.operators);

    if (expression.operators.isEmpty) {
      return expression.numbers[0];
    }

    switch (expression.operators[0]) {
      case '+':
        numbers.add(expression.numbers[0] + expression.numbers[1]);
        break;
      case '-':
        numbers.add(expression.numbers[0] - expression.numbers[1]);
        break;
      case '/':
        numbers.add(expression.numbers[0] / expression.numbers[1]);
        break;
      case '*':
        numbers.add(expression.numbers[0] * expression.numbers[1]);
        break;
    }
    if (expression.numbers.length >= 2) {
      numbers.addAll(expression.numbers.sublist(2));
    }
    if (expression.operators.length > 1) {
      operators.addAll(expression.operators.sublist(1));
    }

    return call(
      ExpressionEntity(
        numbers: numbers,
        operators: operators,
      ),
    );
  }
}
