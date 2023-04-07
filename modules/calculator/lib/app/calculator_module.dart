import 'package:calculator/app/modules/main/main_module.dart';
import 'package:dependencies/dependencies.dart';

class CalculatorModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: MainModule()),
      ];
}
