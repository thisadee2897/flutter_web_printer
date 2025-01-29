import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  runApp(const ProviderScope(child: App()));
}
