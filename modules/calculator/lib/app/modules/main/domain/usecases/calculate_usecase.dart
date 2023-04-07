import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';

abstract class ICalculateUsecase {
  Future<double> call(ExpressionEntity expression);
}

class CalculateUsecase {
  final String expression;

  const CalculateUsecase(this.expression);
// 3-3
  @override
  Future<double> call(ExpressionEntity expression) async {
    List<double> numbers = [];
    List<String> operators = [];
    int i = 0;
    int j = 0;
    for (; i < expression.operators.length; i++, j += 2) {
      var operator = expression.operators[i];
      switch (operator) {
        case '+':
          numbers.add(expression.numbers[j] + expression.numbers[j + 1]);
          break;
        case '-':
          numbers.add(expression.numbers[j] - expression.numbers[j + 1]);
          break;
        case '/':
          numbers.add(expression.numbers[j] / expression.numbers[j + 1]);
          break;
        case '*':
          numbers.add(expression.numbers[j] * expression.numbers[j + 1]);
          break;
      }
    }
    return numbers[0];
  }
}
