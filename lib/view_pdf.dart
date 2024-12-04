import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PDFScreen extends StatefulWidget {
  const PDFScreen({super.key});

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  final FocusNode _focusNode = FocusNode();

  List<String> description = [];
  //Random description 5-50 characters

  // List<pw.Widget> pageContent = [];
  Future<void> _printPdf() async {
    try {
      final doc = pw.Document();

      // สร้างข้อมูลสำหรับใบเสร็จ
      final invoice = Invoice(
        companyName: 'My Company',
        companyAddress: '123 Main St, Bangkok, Thailand',
        invoiceNumber: 'INV-20231234',
        invoiceDate: '4 Dec 2024',
        customerName: 'John Doe',
        items: List.generate(
          50,
          //random description 5-50 characters
          (index) => InvoiceItem(
            no: '${index + 1}',
            description: 'Product 123 Main St, Bangkok, Thailand 123 Main St, Bangkok, Thailand',
            quantity: 1 + index % 3,
            price: 10.0 + index % 10,
          ),
        ),
      );

      // สร้างหน้าจากข้อมูลใบเสร็จ
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
                      ...items.map((item) {
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
                                maxLines: 2,
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
                      }).toList(),
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
        for (var line in item.description.split('\n')) {
          countNewlines += (line.length / 50).ceil();
          if (countNewlines <= 25) {
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
        print('line.length: ${countNewlines}');
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

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: (KeyEvent event) {
        if (event.logicalKey == LogicalKeyboardKey.keyP) {
          _printPdf();
        }
      },
      autofocus: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Table Viewer'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _printPdf,
              child: const Text('Print Invoice'),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// โมเดลสำหรับรายการสินค้า
class InvoiceItem {
  final String description; // รายละเอียดสินค้า/บริการ
  final int quantity; // จำนวน
  final double price; // ราคาต่อหน่วย
  final String no; // ลำดับ

  InvoiceItem({
    required this.no,
    required this.description,
    required this.quantity,
    required this.price,
  });

  double get total => quantity * price; // คำนวณราคารวม
}

// โมเดลสำหรับใบเสร็จ
class Invoice {
  final String companyName; // ชื่อบริษัท
  final String companyAddress; // ที่อยู่บริษัท
  final String invoiceNumber; // หมายเลขใบเสร็จ
  final String invoiceDate; // วันที่ใบเสร็จ
  final String customerName; // ชื่อลูกค้า
  final List<InvoiceItem> items; // รายการสินค้า/บริการ

  Invoice({
    required this.companyName,
    required this.companyAddress,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.customerName,
    required this.items,
  });

  double get totalAmount => items.fold(
        0,
        (sum, item) => sum + item.total,
      ); // คำนวณยอดรวมทั้งหมด
}
