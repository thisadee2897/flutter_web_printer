import 'dart:io';
import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void switchLanguage(WidgetRef ref, Locale newLocale) {
  ref.read(localeProvider.notifier).state = newLocale;
}

final localeProvider = StateProvider<Locale>((ref) => Locale(Platform.localeName.split('_').first));

final languageProvider = StateProvider<Locale>((ref) {
  final locale = ref.watch(localeProvider);
  return locale;
});
