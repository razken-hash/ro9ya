import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlManager {
  static void manageUrl(url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      // if (uri.host == "ruqya.net") {
      //   await launchUrl(uri, mode: LaunchMode.inAppWebView);
      // } else {
      try {
        await launchUrl(uri, mode: LaunchMode.externalNonBrowserApplication);
      } catch (e) {
        await launchUrl(uri, mode: LaunchMode.platformDefault);
        try {} catch (e) {
          log("An error has been occured");
        }
        // }
      }
    }
  }
}
