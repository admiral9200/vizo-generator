import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../repositories/repositories.dart';
import '../services/services.dart';

GetIt get getIt => G;
@protected
GetIt G = GetIt.instance;

class Locator {
  /// Note: remember to call 'await [initDependencies]' in [main.dart]
  Future<void> initDependencies() async {
    await createServices();

    createGlobalDependencies();
  }

  @protected
  @visibleForTesting
  Future<void> initDB() async {
    // getIt.registerSingleton<BagelDB>(
    //   BagelDB(bagelApiKey),
    // );
    // getIt.registerSingleton<BagelUsersRequest>(
    //     getIt<BagelDB>().bagelUsersRequest);
    // await Future.delayed(const Duration(milliseconds: 600));
  }

  @protected
  @visibleForTesting
  Future<void> createServices() async {
    await initDB();

    // final sharedPrefs = await SharedPreferences.getInstance();
    // getIt.registerSingleton<LocalStorage>(LocalStorageSharedPrefs(sharedPrefs));

    ///
  }

  @protected
  @visibleForTesting
  void createGlobalDependencies() {}
}
