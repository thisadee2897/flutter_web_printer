import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/data/custom_class.dart';
import 'package:flutter_web_printer/models/purchaseorder_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

final purchaseorderDTData = ChangeNotifierProvider((ref) => SettingScopeData());

class SettingScopeData extends ChangeNotifier {
  List<PurchaseorderModel> _listData = [];

  List<PurchaseorderModel> get listData => List.unmodifiable(_listData);
  set listData(List<PurchaseorderModel> value) {
    _listData = value;
    notifyListeners();
  }

  final invoice = Invoice(
    companyName: 'My Company',
    companyAddress: '123 Main St',
    invoiceNumber: 'INV-20231234',
    invoiceDate: '4 Dec 2024',
    customerName: 'John Doe',
    items: List.generate(
      1200,
      //random description 5-50 characters
      (index) => InvoiceItem(
        no: '${index + 1}',
        description: 'Product ',
        quantity: 1 + index % 3,
        price: 10.0 + index % 10,
      ),
    ),
  );

  Future<void> printPdf() async {
    final doc = pw.Document();
    try {
      Future<void> createPage(List<InvoiceItem> items) async {
        doc.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (pw.Context context) {
              return pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    invoice.companyName,
                    style: pw.TextStyle(
                      fontSize: 24,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(invoice.companyAddress, style: const pw.TextStyle(fontSize: 12)),
                  pw.SizedBox(height: 16),
                  pw.Text('Invoice',
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      )),
                  pw.SizedBox(height: 8),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text('Invoice Number: ${invoice.invoiceNumber}', style: const pw.TextStyle(fontSize: 12)),
                      pw.Text('Date: ${invoice.invoiceDate}', style: const pw.TextStyle(fontSize: 12)),
                    ],
                  ),
                  pw.SizedBox(height: 16),
                  pw.Text('Bill To: ${invoice.customerName}',
                      style: pw.TextStyle(
                        fontSize: 12,
                        fontWeight: pw.FontWeight.bold,
                      )),
                  pw.SizedBox(height: 16),
                  // Displaying the table header
                  pw.Table(
                    border: pw.TableBorder.all(),
                    columnWidths: {
                      0: const pw.FlexColumnWidth(1),
                      1: const pw.FlexColumnWidth(4),
                      2: const pw.FlexColumnWidth(2),
                      3: const pw.FlexColumnWidth(2),
                      4: const pw.FlexColumnWidth(2),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          //No.
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(4),
                            child: pw.Text('No.', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(4),
                            child: pw.Text('Description', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(4),
                            child: pw.Text('Quantity', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(4),
                            child: pw.Text('Price', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(4),
                            child: pw.Text('Total', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          ),
                        ],
                      ),
                      // Adding rows for items
                      ...items.map(
                        (item) {
                          return pw.TableRow(
                            children: [
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4),
                                child: pw.Text(item.no),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4),
                                child: pw.Text(
                                  item.description,
                                  overflow: pw.TextOverflow.clip,
                                ),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4),
                                child: pw.Text(item.quantity.toString()),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4),
                                child: pw.Text(item.price.toStringAsFixed(2)),
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.all(4),
                                child: pw.Text(item.total.toStringAsFixed(2)),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 16),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.end,
                    children: [
                      pw.Text(
                        'Total: \$${invoice.totalAmount.toStringAsFixed(2)}',
                        style: pw.TextStyle(
                          fontSize: 14,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      }

      int countNewlines = 0;
      List<InvoiceItem> pageItems = [];
      for (var item in invoice.items) {
        for (String line in item.description.split('\n')) {
          // print("lineLast index : ${line.replaceAll(' ', '').split('').length}");
          int l = (line.length / 25).ceil();
          countNewlines += l > 1 ? l : 1;
          if (countNewlines <= 22) {
            pageItems.add(item);
            if (invoice.items.last == item) {
              await createPage(pageItems);
            }
          } else {
            await createPage(pageItems);
            pageItems.add(item);
            countNewlines = 0;
            pageItems = [];
          }
        }
      }

      // Display the PDF for printing
      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async {
          return doc.save(); // Return the generated PDF
        },
      );
    } catch (e) {
      print('Error: $e');
    }
  }
}

//ฟีเจอร์ ภาษาอังกฤษ คือ feature