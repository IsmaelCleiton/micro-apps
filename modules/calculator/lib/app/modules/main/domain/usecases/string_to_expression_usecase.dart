import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';

abstract class IStringToExpressionUsecase {
  Future<ExpressionEntity> call(String expression);
}

class StringToExpressionUsecase implements IStringToExpressionUsecase {
  const StringToExpressionUsecase();

  @override
  Future<ExpressionEntity> call(String expression) async {
    int i = 0;
    int j = 0;
    int k = 0;
    List<double> numbers = [];
    List<String> operators = [];

    for (; i < expression.length; i++) {
      if (isNumeric(expression[i])) {
        j++;
      } else if (expression[i] != '.') {
        operators.add(expression[i]);
        numbers.add(double.parse(expression.substring(k, i)));
        k = i + 1;
      }
      if (i == expression.length - 1) {
        numbers.add(double.parse(expression.substring(k)));
      }
    }

    return ExpressionEntity(numbers: numbers, operators: operators);
  }

  bool isNumeric(String string) {
    if (string.length == 1 &&
        (string == '1' ||
            string == '2' ||
            string == '3' ||
            string == '4' ||
            string == '5' ||
            string == '6' ||
            string == '7' ||
            string == '8' ||
            string == '9' ||
            string == '0')) {
      return true;
    } else {
      return false;
    }
  }
}
