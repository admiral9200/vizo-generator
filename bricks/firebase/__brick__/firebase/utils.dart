import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../core.dart';

/// Get image url from firebase storage
Future<String> getStorageDataUrl(String fileRelativePath) async {
  try {
    final ref = getIt<FirebaseStorage>().ref(fileRelativePath);

    final url = await ref.getDownloadURL();
    if (Uri.parse(url).isAbsolute) return url;
    return '';
  } catch (e, s) {
    final String message = 'Failed to getDownloadURL() $e';
    log(message, error: e, stackTrace: s);
    try {
      getIt<FirebaseCrashlytics>().recordError(e, s);
    } catch (_) {}
    return '';
  }
}
