import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/view_models/genarate_to_pdf.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> widgets = ref.watch(documentWidgetProvider);
    final List<GlobalKey> widgetKeys = List.generate(widgets.length, (index) => GlobalKey());
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Payment',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          FilledButton.icon(
            onPressed: () async {
              ref.read(isLoadGennaratePDFPaymentProvider.notifier).state = true;
              await ref.read(genarateToPDFProvider.notifier).printPdf(widgetKeys);
            },
            label: const Text('Print'),
            icon:  ref.watch(isLoadGennaratePDFPaymentProvider)
                ? Transform.scale(
                    scale: 0.5,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Icon(Icons.print),
          ),
          const Gap(20),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 595,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                widgets.length,
                (index) => RepaintBoundary(
                  key: widgetKeys[index], // ใช้ GlobalKey
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Gap(5),
                      widgets[index],
                      const Gap(5),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
