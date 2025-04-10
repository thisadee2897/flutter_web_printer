import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/receivable_cash/controllers/providers/document_receivable_cash.dart';
import 'package:printing/printing.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../controllers/providers/document_receivable_cash_dt.dart';

class ReceivableCashScreen extends ConsumerWidget {
  const ReceivableCashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Uint8List? filePdf = ref.watch(filePdfReceivableCashViewProvider);
    final hd = ref.watch(documentReceivableCashProvider);
    final dt = ref.watch(documentReceivableCashDTProvider);
    if(dt.hasError){
      return Center(child: Text('error: ${dt.error}'));
    }
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Receivable Cash',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          FilledButton.icon(
            onPressed: () async {
              var pdfFile = ref.read(filePdfReceivableCashProvider);
              await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
            },
            label: const Text('Print'),
            icon: const Icon(Icons.print),
          ),
          const Gap(20),
        ],
      ),
      body: hd.when(
        loading: () => load(),
        error: (e, s) => Center(child: Text('error: $e')),
        data: (data) {
          return filePdf == null
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
                );
        },
      ),
    );
  }

  Center load() => const Center(child: CircularProgressIndicator());
}
