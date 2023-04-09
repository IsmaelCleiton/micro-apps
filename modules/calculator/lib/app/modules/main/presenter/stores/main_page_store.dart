import 'package:calculator/app/modules/main/domain/usecases/calculate_usecase.dart';
import 'package:calculator/app/modules/main/domain/usecases/string_to_expression_usecase.dart';
import 'package:dependencies/dependencies.dart';

class MainPageStore extends Store<String> {
  final ICalculateUsecase _calculate;
  final IStringToExpressionUsecase _stringToExpressionUsecase;

  MainPageStore({required calculate, required stringToExpressionUsecase})
      : _calculate = calculate,
        _stringToExpressionUsecase = stringToExpressionUsecase,
        super('');

  void erase() {
    update('');
  }

  void calculate() async {
    var expression = await _stringToExpressionUsecase(state);
    double result = await _calculate(expression);
    update(result.toString());
  }

  void addSymbol(String symbol) {
    update(state + symbol);
  }
}
