import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core.dart';

const USER_PREF = 'user';

class SharedPreferencesService implements StorageService {
  SharedPreferencesService(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  UserModel? getUser() {
    final userEncoded = _sharedPreferences.getString(USER_PREF);
    return userEncoded != null
        ? UserModel.fromJson(jsonDecode(userEncoded))
        : null;
  }

  @override
  Future<void> setUser(UserModel? user) async {
    if (user != null) {
      await _sharedPreferences.setString(USER_PREF, jsonEncode(user.toJson()));
    } else {
      await _sharedPreferences.remove(USER_PREF);
    }
  }
}
