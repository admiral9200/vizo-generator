import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../repositories/repositories.dart';
import '../services/services.dart';

GetIt get getIt => _g;
GetIt _g = GetIt.instance;

class Locator {
  /// Note: remember to call 'await [initDependencies]' in [main.dart]
  Future<void> initDependencies() async {
    await createServices();

    repositoriesAndFactories();
  }

  @visibleForTesting
  Future<void> initDB() async {
    // getIt.registerSingleton<BagelDB>(
    //   BagelDB(bagelApiKey),
    // );
    // getIt.registerSingleton<BagelUsersRequest>(
    //     getIt<BagelDB>().bagelUsersRequest);
    // OR
    // getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
    // getIt.registerSingleton<FirebaseCrashlytics>(FirebaseCrashlytics.instance);
    // getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
    // getIt.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);
    // await Future.delayed(const Duration(milliseconds: 400));
  }

  @visibleForTesting
  Future<void> createServices() async {
    await initDB();

    // final sharedPrefs = await SharedPreferences.getInstance();
    // getIt.registerSingleton<LocalStorage>(LocalStorageSharedPrefs(sharedPrefs));
  }

  @visibleForTesting
  void repositoriesAndFactories() {}
}
