// ignore_for_file: unused_element
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'route_config.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      onException: (context, state, router) => router.go(Routes.error),
      initialLocation: Routes.initPath,
      navigatorKey: _rootNavigatorKey,
      // errorPageBuilder: (context, state) => const NoTransitionPage(child: ErrorScreen()),
      routes: [
        GoRoute(
          path: Routes.error,
          pageBuilder: (context, state) => const NoTransitionPage(child: ErrorScreen()),
        ),
        GoRoute(
          path: Routes.initPath,
          pageBuilder: (context, state) => const NoTransitionPage(child: InitScreeen()),
        ),
        GoRoute(
          path: Routes.payment,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final paymentHdId = state.uri.queryParameters['cGF5bWVudF9oZF9pZA'];
                if (kDebugMode) print('paymentHdId: $paymentHdId');
                var hdId = idFormBase64(id: paymentHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentPaymentProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: PaymentScreen());
          },
        ),
      ],
    );
  },
);
