import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

String get imgLogo => 'assets/images/logo.png';
String get svgTrue => '''
<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect width="10" height="10" rx="2" fill="#0064B0"/>
<path d="M7.33317 3.39453L4.12484 6.60286L2.6665 5.14453" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''';
String get svgFasle => '''
<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect x="0.25" y="0.25" width="9.5" height="9.5" rx="1.75" stroke="#687182" stroke-width="0.5"/>
</svg>
''';

Future<Uint8List?> getImageBytes(String? imageUrl) async {
  if (imageUrl == null || imageUrl.isEmpty) return null;

  try {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
  } catch (e) {
    if (kDebugMode) print("Error fetching image: $e");
  }

  return null;
}
