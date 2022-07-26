abstract class LauncherService {
  Future<bool> launchUrl(String url, {bool useWebView = false});

  Future<bool> tryOpen(String url);

  Future<bool> trySendEmail(
      {required String email, String? subject, String? body});
}
