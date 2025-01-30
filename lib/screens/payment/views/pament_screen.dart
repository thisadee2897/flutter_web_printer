import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/view_models/genarate_to_pdf.dart';
import 'package:printing/printing.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Uint8List? filePdf = ref.watch(filePdfPayMentViewProvider);
    final dt = ref.watch(documentPaymentDTProvider);
    final hd = ref.watch(documentPaymentProvider);
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
      body: hd.isLoading || dt.isLoading
          ? load()
          : filePdf == null
              ? Container()
              : SfPdfViewerTheme(
                  data: const SfPdfViewerThemeData(backgroundColor: Colors.black87),
                  child: Center(
                    child: SizedBox(
                      width: context.screenWidth > context.screenHeight ? context.screenHeight : context.screenWidth,
                      child: SfPdfViewer.memory(
                        filePdf,
                        canShowPaginationDialog: false,
                        pageSpacing: 10,
                      ),
                    ),
                  ),
                ),
    );
  }

  Center load() => const Center(child: CircularProgressIndicator());
}
