// ignore_for_file: unused_element
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/expense_cash/controllers/providers/document_expense_cash.dart';
import 'package:flutter_web_printer/screens/expense_cash/views/expense_cash_screen.dart';
import 'package:flutter_web_printer/screens/expense_credit/controllers/providers/document_expense_credit.dart';
import 'package:flutter_web_printer/screens/expense_credit/views/expense_credit_screen.dart';
import 'package:flutter_web_printer/screens/general_ledger/controllers/providers/document_general_ledger.dart';
import 'package:flutter_web_printer/screens/general_ledger/views/general_ledger_screen.dart';
import 'package:flutter_web_printer/screens/good_receive_cash/controllers/providers/document_good_receive_cash.dart';
import 'package:flutter_web_printer/screens/good_receive_cash/views/good_receive_cash_screen.dart';
import 'package:flutter_web_printer/screens/good_receive_credit/controllers/providers/document_good_receive_credit.dart';
import 'package:flutter_web_printer/screens/good_receive_credit/views/good_receive_credit_screen.dart';
import 'package:flutter_web_printer/screens/inventory_adjust/controllers/providers/document_inventory_adjust.dart';
import 'package:flutter_web_printer/screens/inventory_adjust/views/inventory_adjust_screen.dart';
import 'package:flutter_web_printer/screens/inventory_requisition/controllers/providers/document_inventory_requisition.dart';
import 'package:flutter_web_printer/screens/inventory_requisition/views/inventory_requisition_screen.dart';
import 'package:flutter_web_printer/screens/order/controllers/providers/document_order.dart';
import 'package:flutter_web_printer/screens/order/views/return_order_screen.dart';
import 'package:flutter_web_printer/screens/pay_the_deposit/controllers/providers/document_pay_the_deposit_cash.dart';
import 'package:flutter_web_printer/screens/pay_the_deposit/views/pay_the_deposit_screen.dart';
import 'package:flutter_web_printer/screens/purchase_order/controllers/providers/document_purchase_order.dart';
import 'package:flutter_web_printer/screens/purchase_order/views/return_purchase_order_screen.dart';
import 'package:flutter_web_printer/screens/purchase_request/controllers/providers/document_purchase_request.dart';
import 'package:flutter_web_printer/screens/purchase_request/views/return_purchase_request_screen.dart';
import 'package:flutter_web_printer/screens/quotation/controllers/providers/document_quotation.dart';
import 'package:flutter_web_printer/screens/quotation/views/return_quotation_screen.dart';
import 'package:flutter_web_printer/screens/receivable_cash/controllers/providers/document_receivable_cash.dart';
import 'package:flutter_web_printer/screens/receivable_cash/views/return_receivable_cash_screen.dart';
import 'package:flutter_web_printer/screens/return_product_cash/controllers/providers/document_return_product_cash.dart';
import 'package:flutter_web_printer/screens/return_product_cash/views/return_product_cash_screen.dart';
import 'package:flutter_web_printer/screens/return_product_credit/controllers/providers/document_return_product_credit.dart';
import 'package:flutter_web_printer/screens/return_product_credit/views/return_product_credit_screen.dart';
import 'package:flutter_web_printer/screens/return_to_reduce_cash_debt/controllers/providers/document_return_to_reduce_cash_debt.dart';
import 'package:flutter_web_printer/screens/return_to_reduce_cash_debt/views/return_to_reduce_cash_debt_screen.dart';
import 'package:flutter_web_printer/screens/return_to_reduce_credit_debt/controllers/providers/document_return_to_reduce_credit_debt.dart';
import 'package:flutter_web_printer/screens/return_to_reduce_credit_debt/views/return_to_reduce_credit_debt_screen.dart';
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
        GoRoute(
          path: Routes.order,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['b3JkZXJfaGRfaWQ'];
                if (kDebugMode) print('Order: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentOrderProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: OrderScreen());
          },
        ),
        GoRoute(
          path: Routes.quotation,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cXVvdGF0aW9uX2hkX2lk'];
                if (kDebugMode) print('Quotation: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentQuotationProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: QuotationScreen());
          },
        ),
        GoRoute(
          path: Routes.purchaseRequest,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cHVyY2hhc2VfcmVxdWVzdA'];
                if (kDebugMode) print('purchase_request: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentPurchaseRequestProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: PurchaseRequestScreen());
          },
        ),
        GoRoute(
          path: Routes.purchaseOrder,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cHVyY2hhc2Vfb3JkZXI'];
                if (kDebugMode) print('purchase_order: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentPurchaseOrderProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: PurchaseOrderScreen());
          },
        ),
        GoRoute(
          path: Routes.goodReceiveCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['Z29vZF9yZWNlaXZlX2Nhc2g'];
                if (kDebugMode) print('good_receive_cash: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentGoodReceiveCashProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: GoodReceiveCashScreen());
          },
        ),
        GoRoute(
          path: Routes.goodReceiveCredit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['Z29vZF9yZWNlaXZlX2NyZWRpdA'];
                if (kDebugMode) print('good_receive_credit: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentGoodReceiveCreditProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: GoodReceiveCreditScreen());
          },
        ),
        GoRoute(
          path: Routes.returnToReduceCashDebt,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cmV0dXJuX3RvX3JlZHVjZV9jYXNoX2RlYnQ'];
                if (kDebugMode) print('return_to_reduce_cash_debt: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentReturnToReduceCashDebtProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReturnToReduceCashDebtScreen());
          },
        ),
        GoRoute(
          path: Routes.returnToReduceCreditDebt,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cmV0dXJuX3RvX3JlZHVjZV9jcmVkaXRfZGVidA'];
                if (kDebugMode) print('return_to_reduce_credit_debt: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentReturnToReduceCreditDebtProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReturnToReduceCreditDebtScreen());
          },
        ),
        GoRoute(
          path: Routes.payTheDeposit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['cGF5X3RoZV9kZXBvc2l0'];
                if (kDebugMode) print('pay_the_deposit: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentPayTheDepositProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: PayTheDepositScreen());
          },
        ),
        GoRoute(
          path: Routes.expenseCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['ZXhwZW5zZV9jYXNo'];
                if (kDebugMode) print('expense_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentExpenseCashProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ExpenseCashScreen());
          },
        ),
        GoRoute(
          path: Routes.expenseCredit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['ZXhwZW5zZV9jcmVkaXQ'];
                if (kDebugMode) print('expense_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentExpenseCreditProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ExpenseCreditScreen());
          },
        ),
        GoRoute(
          path: Routes.inventoryAdjust,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['aW52ZW50b3J5X2FkanVzdA'];
                if (kDebugMode) print('adjust_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentInventoryAdjustProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: InventoryAdjustScreen());
          },
        ),
        GoRoute(
          path: Routes.inventoryRequisition,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['aW52ZW50b3J5X3JlcXVpc2l0aW9u'];
                if (kDebugMode) print('inventory_requisition: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentInventoryRequisitionProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: InventoryRequisitionScreen());
          },
        ),
        GoRoute(
          path: Routes.generalLedger,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['Z2VuZXJhbF9sZWRnZXI'];
                if (kDebugMode) print('general_ledger: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentGeneralLedgerProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: GeneralLedgerScreen());
          },
        ),
      ],
    );
  },
);
