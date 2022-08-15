import 'package:flutter/widgets.dart';

import 'package:url_launcher/url_launcher.dart' as web;

import 'launcher_service.dart';

class UrlLauncherService implements LauncherService {
  @override
  Future<bool> launchUrl(String url, {bool useWebView = false}) async {
    try {
      final link = Uri.parse(url);
      // if (!await web.canLaunchUrl(link)) return false;

      return await web.launchUrl(
        link,
        mode: useWebView
            ? web.LaunchMode.inAppWebView
            : web.LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<bool> tryOpen(String url) async {
    try {
      final link = Uri.parse(url);
      return await web.launchUrl(
        link,
        mode: web.LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<bool> trySendEmail(
      {required String email, String? subject, String? body}) async {
    try {
      // "mailto:$email?&subject=$subject&body=$body}" // Uri.encodeFull

      ///We need to encode because of white spaces and '' in the string
      final Uri emailLink = Uri(
        scheme: 'mailto',
        path: email,
        query: encodeQueryParameters({
          'subject': subject ?? '',
          'body': body ?? ',',
        }),
      );

      return await web.launchUrl(
        emailLink,
        mode: web.LaunchMode.externalNonBrowserApplication,
      );
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
