import 'package:bagel_db/bagel_db.dart';
import 'package:get_it/get_it.dart';

final G = GetIt.instance;

Future<void> initDependencies() async {
  // Bagel
  G.registerSingleton<BagelDB>(
    BagelDB(const String.fromEnvironment('BAGEL_API_KEY')),
  );

  // Services

  // Repository
}
