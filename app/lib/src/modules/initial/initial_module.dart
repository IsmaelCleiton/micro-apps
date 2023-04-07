import 'package:app/src/modules/initial/presenter/ui/pages/initial_page.dart';
import 'package:calculator/app/calculator_module.dart';
import 'package:dependencies/dependencies.dart';

class InitialModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const InitialPage(),
        ),
        ModuleRoute(
          '/calculator',
          module: CalculatorModule(),
        )
      ];
}
