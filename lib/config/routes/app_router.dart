// ignore_for_file: unused_element
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/receivable_cash/controllers/providers/document_receivable_cash.dart';
import 'package:flutter_web_printer/screens/receivable_cash/views/return_receivable_cash_screen.dart';
import 'package:flutter_web_printer/screens/return_product_cash/controllers/providers/document_return_product_cash.dart';
import 'package:flutter_web_printer/screens/return_product_cash/views/return_product_cash_screen.dart';
import 'package:flutter_web_printer/screens/return_product_credit/controllers/providers/document_return_product_credit.dart';
import 'package:flutter_web_printer/screens/return_product_credit/views/return_product_credit_screen.dart';
import 'package:flutter_web_printer/screens/sale_cash/controllers/providers/document_sale_cash.dart';
import 'package:flutter_web_printer/screens/sale_cash/views/sale_cash_screen.dart';
import 'package:flutter_web_printer/screens/sale_credit/controllers/providers/document_sale_credit.dart';
import 'package:flutter_web_printer/screens/sale_credit/views/sale_credit_screen.dart';
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
        GoRoute(
          path: Routes.saleCredit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['c2FsZV9oZF9pZAo'];
                if (kDebugMode) print('sale_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentSaleCreditProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: SaleCreditScreen());
          },
        ),
        GoRoute(
          path: Routes.saleCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['c2FsZV9oZF9pZAo'];
                if (kDebugMode) print('sale_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentSaleCashProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: SaleCashScreen());
          },
        ),
        GoRoute(
          path: Routes.returnProductCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cmV0dXJucHJvZHVjdF9oZF9pZA'];
                if (kDebugMode) print('returnproduct_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentReturnProductCashProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReturnProductCashScreen());
          },
        ),
        GoRoute(
          path: Routes.returnProductCredit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cmV0dXJucHJvZHVjdF9oZF9pZA'];
                if (kDebugMode) print('returnproduct_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentReturnProductCreditProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReturnProductCreditScreen());
          },
        ),
        GoRoute(
          path: Routes.receivableCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['UmVjZWl2YWJsZUNhc2g'];
                if (kDebugMode) print('ReceivableCash: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentReceivableCashProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReceivableCashScreen());
          },
        ),
      ],
    );
  },
);
