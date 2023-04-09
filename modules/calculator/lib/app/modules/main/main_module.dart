import 'package:calculator/app/modules/main/domain/usecases/calculate_usecase.dart';
import 'package:calculator/app/modules/main/domain/usecases/string_to_expression_usecase.dart';
import 'package:calculator/app/modules/main/presenter/stores/main_page_store.dart';
import 'package:calculator/app/modules/main/presenter/ui/pages/main_page.dart';
import 'package:dependencies/dependencies.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const MainPage(),
        ),
      ];

  @override
  List<Bind<Object>> get binds => [
        //usecases
        Bind.factory((i) => const CalculateUsecase()),
        Bind.factory((i) => const StringToExpressionUsecase()),
        //stores
        Bind.lazySingleton((i) => MainPageStore(
              calculate: i(),
              stringToExpressionUsecase: i(),
            ))
      ];
}
