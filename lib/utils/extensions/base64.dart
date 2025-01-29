import 'dart:convert';

idToBase64({required String? id}) {
  return base64UrlEncode(utf8.encode(id ?? ''));
}

idFormBase64({required String? id}) {
  return utf8.decode(base64Url.decode(id ?? ''));
}
