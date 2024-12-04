
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
