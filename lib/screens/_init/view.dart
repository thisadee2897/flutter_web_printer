// import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/earning_statement/controllers/providers/earning_statement_dt.dart';
import 'package:lottie/lottie.dart';

class InitScreeen extends ConsumerWidget {
  const InitScreeen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double minScale = context.screenHeight > context.screenWidth ? context.screenWidth : context.screenHeight;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              'assets/business-salesman.json',
              height: minScale * 0.8,
              width: minScale * 0.8,
            ),
            Text(
              'Welcome',
              style: context.displayLarge.copyWith(color: Colors.white),
            ),
            TextButton(
                onPressed: () {
                  // final Uri uri = Uri(
                  //   scheme: 'https',
                  //   host: 'oho-pos.com',
                  //   path: '/ERP-Printer/#/report_earning_statement',
                  //   queryParameters: {
                  //     'YmVnaW4': '20250101',
                  //     'ZW5k': '20250318',
                  //     'YnJhbmNoSWQ': [15, 16].map((e) => e.toString()).toList(),
                  //     'Y29tcGFueUlk': '13',
                  //     'dHlwZUZpbmQ': '1',
                  //   },
                  // );
                  final Uri uri = Uri(
                    scheme: 'https',
                    host: 'oho-pos.com',
                    path: '/ERP-Printer/#/report_earning_statement',
                    queryParameters: {
                      'YmVnaW4': 'MjAyNTAxMDE=',
                      'ZW5k': 'MjAyNTAzMTg=',
                      'YnJhbmNoSWQ': ['MTU=', 'MTY='].map((e) => e.toString()).toList(),
                      'Y29tcGFueUlk': 'MTM=',
                      'dHlwZUZpbmQ': 'MQ==',
                    },
                  );
                  if (kDebugMode) print(uri.toString());
                  if (kDebugMode) print(idFormBase64(id: uri.queryParameters['YmVnaW4']));
                  if (kDebugMode) print(idFormBase64(id: uri.queryParameters['ZW5k']));
                  if (kDebugMode) print(uri.queryParametersAll['YnJhbmNoSWQ']?.map((e) => int.parse(idFormBase64(id: e))).toList() ?? []);
                  if (kDebugMode) print(idFormBase64(id: uri.queryParameters['Y29tcGFueUlk']));
                  if (kDebugMode) print(idFormBase64(id: uri.queryParameters['dHlwZUZpbmQ']));
                  ref.read(documentEarningStatementDTProvider.notifier).get(
                        begin: idFormBase64(id: uri.queryParameters['YmVnaW4']),
                        end: idFormBase64(id: uri.queryParameters['ZW5k']),
                        branchId: uri.queryParametersAll['YnJhbmNoSWQ']?.map((e) => int.parse(idFormBase64(id: e))).toList() ?? [],
                        companyId: idFormBase64(id: uri.queryParameters['Y29tcGFueUlk']),
                        typeFind: idFormBase64(id: uri.queryParameters['dHlwZUZpbmQ']),
                      );
                },
                child: const Text('TextApi'))
          ],
        ),
      ),
    );
  }
}
