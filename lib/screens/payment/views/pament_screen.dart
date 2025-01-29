import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/view_models/genarate_to_pdf.dart';
import 'package:printing/printing.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filePdf = ref.watch(filePdfPayMentViewProvider);
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
              // await p.Printing.sharePdf(bytes: filePdf!);

              var pdfFile = ref.read(filePdfPayMentProvider);
              await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
            },
            label: const Text('Print'),
            icon: ref.watch(isLoadGennaratePDFPaymentProvider)
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
      body: filePdf == null
          ? Center(child: Container())
          : SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SfPdfViewer.network(
                'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              ),
            ),
    );
  }
}
