import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/app_router.dart';
import 'package:flutter_web_printer/config/translation/generated/l10n.dart';
import '../config/theme/app_theme.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final appRouter = ref.read(appRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      title: 'ERP',
      localizationsDelegates: const [Trans.delegate],
      supportedLocales: Trans.delegate.supportedLocales,
      routerConfig: appRouter,
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   BouncingScrollWrapper.builder(context, widget!),
      //   minWidth: 1920,
      //   maxWidth: 1920,
      //   defaultScale: true,
      //   background: Container(width: 1920),
      // ),
    );
  }
}
