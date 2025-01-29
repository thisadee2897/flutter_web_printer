import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(const ProviderScope(child: App()));
  });
}
