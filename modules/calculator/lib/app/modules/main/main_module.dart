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
}
