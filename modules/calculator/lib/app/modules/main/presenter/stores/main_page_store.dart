import 'package:calculator/app/modules/main/domain/entities/expression_entity.dart';
import 'package:dependencies/dependencies.dart';

class MainPageStore extends Store<String> {
  MainPageStore() : super('');

  void erase() {
    update('');
  }

  void addSymbol(String symbol) {
    update(state + symbol);
  }
}
