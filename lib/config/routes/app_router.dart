// ignore_for_file: unused_element
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/bill/controllers/providers/document_bill_cash.dart';
import 'package:flutter_web_printer/screens/bill/views/bill_screen.dart';
import 'package:flutter_web_printer/screens/earning_statement/controllers/providers/earning_statement_dt.dart';
import 'package:flutter_web_printer/screens/earning_statement/views/earning_statement_screen.dart';
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
import 'package:flutter_web_printer/screens/goodmeal_full_tax_invoice/controllers/providers/print_full_tax_invoice.dart';
import 'package:flutter_web_printer/screens/goodmeal_full_tax_invoice/views/report_full_tax_invoice_screen.dart';
import 'package:flutter_web_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/providers/get_company_data.dart';
import 'package:flutter_web_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/providers/report_hq_vat_postt_sale.dart';
import 'package:flutter_web_printer/screens/goodmeal_report_hq_vat_postt_sale/views/report_hq_vat_postt_sale_screen.dart';
import 'package:flutter_web_printer/screens/goodmeal_simplified_tax_invoice/controllers/providers/print_simplified_tax_invoice.dart';
import 'package:flutter_web_printer/screens/goodmeal_simplified_tax_invoice/views/report_simplified_tax_invoice_screen.dart';
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
import 'package:flutter_web_printer/screens/sticker_sale_cash/controllers/providers/document_sale_cash.dart';
import 'package:flutter_web_printer/screens/sticker_sale_cash/views/sticker_sale_cash_screen.dart';
import 'route_config.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      redirect: (context, state) {
        final Uri uri = state.uri;
        Map<String, String> queryParameters = uri.queryParameters;
        String server = queryParameters['c2VydmVyVXJsUmVxdWVzdA'] ?? '';
        String token = queryParameters['dG9rZW5SZXF1ZXN0'] ?? '';
        String base64DeCodeServer = idFormBase64(id: server);
        String base64DeCodeToken = idFormBase64(id: token);
        // if (kDebugMode) print('server: $base64DeCodeServer');
        // if (kDebugMode) print('token: $base64DeCodeToken');
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(serverUrlRequest.notifier).state = base64DeCodeServer;
          ref.read(tokenRequest.notifier).state = base64DeCodeToken;
        });
        return null;
        // if (kDebugMode) print(jsonEncode(queryParameters));
      },
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
        GoRoute(
          path: Routes.bill,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['YmlsbA'];
                if (kDebugMode) print('bill: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentBillProvider.notifier).get(id: hdId);
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: BillScreen());
          },
        ),
        GoRoute(
          path: Routes.reportEarningStatement,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final Uri uri = state.uri;
                // if (kDebugMode) print(uri.toString());
                // if (kDebugMode) print(idFormBase64(id: uri.queryParameters['YmVnaW4']));
                // if (kDebugMode) print(idFormBase64(id: uri.queryParameters['ZW5k']));
                // if (kDebugMode) print(uri.queryParametersAll['YnJhbmNoSWQ']?.map((e) => int.parse(idFormBase64(id: e))).toList() ?? []);
                // if (kDebugMode) print(idFormBase64(id: uri.queryParameters['Y29tcGFueUlk']));
                // if (kDebugMode) print(idFormBase64(id: uri.queryParameters['dHlwZUZpbmQ']));
                ref.read(documentEarningStatementDTProvider.notifier).get(
                      begin: idFormBase64(id: uri.queryParameters['YmVnaW4']),
                      end: idFormBase64(id: uri.queryParameters['ZW5k']),
                      branchId: uri.queryParametersAll['YnJhbmNoSWQ']?.map((e) => int.parse(idFormBase64(id: e))).toList() ?? [],
                      companyId: idFormBase64(id: uri.queryParameters['Y29tcGFueUlk']),
                      typeFind: idFormBase64(id: uri.queryParameters['dHlwZUZpbmQ']),
                    );
              } catch (e) {
                if (kDebugMode) print('error: $e');
                ref.read(routerHelperProvider).goPath('/error');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: EarningStatementScreen());
          },
        ),
        GoRoute(
          path: Routes.stickerSaleCredit,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['c2FsZV9oZF9pZAo'];
                // if (kDebugMode) print('sale_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                // if (kDebugMode) print('hdId: $hdId');
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
          path: Routes.stickerSaleCash,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final saleHdId = state.uri.queryParameters['c2FsZV9oZF9pZAo'];
                // if (kDebugMode) print('sale_hd_id: $saleHdId');
                var hdId = idFormBase64(id: saleHdId);
                // if (kDebugMode) print('hdId: $hdId');
                await ref.read(documentStickerSaleCashProvider.notifier).get(id: hdId);
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: StickerSaleCashScreen());
          },
        ),
        GoRoute(
          path: Routes.reportHQVatPosttSaleScreen,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
                // final masterBranchIdBase64 = state.uri.queryParameters['bWFzdGVyX2JyYW5jaF9pZA'];
                List<String> masterBranchBase64List = state.uri.queryParametersAll['bWFzdGVyX2JyYW5jaF9pZA'] ?? [];
                if (kDebugMode) print('masterBranchBase64List: $masterBranchBase64List');
                final startDateBase64 = state.uri.queryParameters['c3RhcnRfZGF0ZQ'];
                final endDateBase64 = state.uri.queryParameters['ZW5kX2RhdGU'];
                List<int> masterBranchIds = masterBranchBase64List
                    .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                    .whereType<int>() // กรองค่า null ออก
                    .toList();
                // if (kDebugMode) print('masterBranchIdBase64: $masterBranchIdBase64');
                if (kDebugMode) print('companyBase64Id: $companyBase64Id');
                if (kDebugMode) print('startDateBase64: $startDateBase64');
                if (kDebugMode) print('endDateBase64: $endDateBase64');
                var companyId = idFormBase64(id: companyBase64Id);
                // var masterBranchId = idFormBase64(id: masterBranchIdBase64);
                var startDate = idFormBase64(id: startDateBase64);
                var endDate = idFormBase64(id: endDateBase64);
                if (kDebugMode) print('companyId: $companyId');
                if (kDebugMode) print('masterBranchIds: $masterBranchIds');
                if (kDebugMode) print('startDate: $startDate');
                if (kDebugMode) print('endDate: $endDate');
                ref.read(startDateProvider.notifier).state = DateTime.parse(startDate);
                ref.read(endDateProvider.notifier).state = DateTime.parse(endDate);
                await ref.read(hdReportHQVatPosttSaleProvider.notifier).get(id: companyId);
                await ref.read(detailReportHQVatPosttSaleProvider.notifier).get(
                  body: {
                    "master_branch_id": masterBranchIds.join(','),
                    "start_date": startDate,
                    "end_date": endDate,
                  },
                );
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReportHQVatPosttSaleScreen());
          },
        ),
        GoRoute(
          path: Routes.simplifiedTaxInvoiceScreen,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                // final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
                // // final masterBranchIdBase64 = state.uri.queryParameters['bWFzdGVyX2JyYW5jaF9pZA'];
                // List<String> masterBranchBase64List = state.uri.queryParametersAll['bWFzdGVyX2JyYW5jaF9pZA'] ?? [];
                // if (kDebugMode) print('masterBranchBase64List: $masterBranchBase64List');
                // final startDateBase64 = state.uri.queryParameters['c3RhcnRfZGF0ZQ'];
                // final endDateBase64 = state.uri.queryParameters['ZW5kX2RhdGU'];
                // List<int> masterBranchIds = masterBranchBase64List
                //     .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                //     .whereType<int>() // กรองค่า null ออก
                //     .toList();
                // // if (kDebugMode) print('masterBranchIdBase64: $masterBranchIdBase64');
                // if (kDebugMode) print('companyBase64Id: $companyBase64Id');
                // if (kDebugMode) print('startDateBase64: $startDateBase64');
                // if (kDebugMode) print('endDateBase64: $endDateBase64');
                // var companyId = idFormBase64(id: companyBase64Id);
                // // var masterBranchId = idFormBase64(id: masterBranchIdBase64);
                // var startDate = idFormBase64(id: startDateBase64);
                // var endDate = idFormBase64(id: endDateBase64);
                // if (kDebugMode) print('companyId: $companyId');
                // if (kDebugMode) print('masterBranchIds: $masterBranchIds');
                // if (kDebugMode) print('startDate: $startDate');
                // if (kDebugMode) print('endDate: $endDate');
                // ref.read(startDateProvider.notifier).state = DateTime.parse(startDate);
                // ref.read(endDateProvider.notifier).state = DateTime.parse(endDate);
                // await ref.read(hdReportHQVatPosttSaleProvider.notifier).get(id: companyId);
                await ref.read(simplifiedTaxInvoiceProvider.notifier).get(
                  body: {
                    "docu_no": "TAX2025052200001,TAX2025052200002,TAX2025052200003",
                    "company": "1",
                    "branchs": "147,23",
                  },
                );
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: SimplifiedTaxInvoiceScreen());
          },
        ),
        GoRoute(
          path: Routes.fullTaxInvoiceScreen,
          redirect: (context, state) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                // final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
                // // final masterBranchIdBase64 = state.uri.queryParameters['bWFzdGVyX2JyYW5jaF9pZA'];
                // List<String> masterBranchBase64List = state.uri.queryParametersAll['bWFzdGVyX2JyYW5jaF9pZA'] ?? [];
                // if (kDebugMode) print('masterBranchBase64List: $masterBranchBase64List');
                // final startDateBase64 = state.uri.queryParameters['c3RhcnRfZGF0ZQ'];
                // final endDateBase64 = state.uri.queryParameters['ZW5kX2RhdGU'];
                // List<int> masterBranchIds = masterBranchBase64List
                //     .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                //     .whereType<int>() // กรองค่า null ออก
                //     .toList();
                // // if (kDebugMode) print('masterBranchIdBase64: $masterBranchIdBase64');
                // if (kDebugMode) print('companyBase64Id: $companyBase64Id');
                // if (kDebugMode) print('startDateBase64: $startDateBase64');
                // if (kDebugMode) print('endDateBase64: $endDateBase64');
                // var companyId = idFormBase64(id: companyBase64Id);
                // // var masterBranchId = idFormBase64(id: masterBranchIdBase64);
                // var startDate = idFormBase64(id: startDateBase64);
                // var endDate = idFormBase64(id: endDateBase64);
                // if (kDebugMode) print('companyId: $companyId');
                // if (kDebugMode) print('masterBranchIds: $masterBranchIds');
                // if (kDebugMode) print('startDate: $startDate');
                // if (kDebugMode) print('endDate: $endDate');
                // ref.read(startDateProvider.notifier).state = DateTime.parse(startDate);
                // ref.read(endDateProvider.notifier).state = DateTime.parse(endDate);
                await ref.read(fullTaxInvoiceProvider.notifier).get(
                  body: {
                    "original": true,
                    "copy": true,
                    "docu_no": "TAX2025052200001,TAX2025052200002,TAX2025052200003",
                    "company": "1",
                    "branchs": "147,23",
                  },
                );
              } catch (e) {
                ref.read(routerHelperProvider).goPath('/error');
                if (kDebugMode) print('error: $e');
                return;
              }
            });
            return;
          },
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: FullTaxInvoiceScreen());
          },
        ),
      ],
    );
  },
);
