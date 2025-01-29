// ignore_for_file: unused_element
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/views/pament_screen.dart';
import 'package:flutter_web_printer/utils/extensions/base64.dart';
import 'package:go_router/go_router.dart';
import 'route_config.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      onException: (context, state, router) {},
      initialLocation: Routes.initPath,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: Routes.payment,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              final paymentHdId = state.uri.queryParameters['cGF5bWVudF9oZF9pZA'];
              if (kDebugMode) print('paymentHdId: $paymentHdId');
              var hdId = idFormBase64(id: paymentHdId);
              if (kDebugMode) print('hdId: $hdId');
              await ref.read(documentPaymentProvider.notifier).get(id: hdId);
              await ref.read(documentPaymentDTProvider.notifier).get(id: hdId);
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
