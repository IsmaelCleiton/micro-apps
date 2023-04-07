import 'package:app/src/modules/initial/initial_module.dart';
import 'package:dependencies/dependencies.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [ModuleRoute('/', module: InitialModule())];
}
