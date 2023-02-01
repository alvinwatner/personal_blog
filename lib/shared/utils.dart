// ignore: no_leading_underscores_for_local_identifiers
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlCustom(
  String url, {
  bool isEmail = false,
}) async {
  if (isEmail) {
    if (!await launchUrl(Uri.parse('mailto:<$url>'))) {
      throw Exception('Could not launch $url');
    }
  } else {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
