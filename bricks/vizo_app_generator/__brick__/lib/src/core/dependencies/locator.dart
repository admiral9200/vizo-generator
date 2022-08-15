import 'package:bagel_db/bagel_db.dart';
import 'package:get_it/get_it.dart';

import '../core.dart';

final G = GetIt.instance;

Future<void> initDependencies() async {
  // Bagel
  G.registerSingleton<BagelDB>(
    BagelDB(const String.fromEnvironment('BAGEL_API_KEY')),
  );

  // Services

  // Repository
  G.registerSingleton<LanguageRepository>(
    LanguageRepositoryBagel(G()),
  );
  G.registerSingleton<TranslationRepository>(
    TranslationRepositoryBagel(G()),
  );
}
