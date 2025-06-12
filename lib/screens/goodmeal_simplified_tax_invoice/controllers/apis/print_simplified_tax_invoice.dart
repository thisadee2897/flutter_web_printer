import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/simplified_tax_invoice_model.dart';

class SimplifiedTaxInvoiceApi {
  final Ref ref;
  SimplifiedTaxInvoiceApi({required this.ref});
  final String _detail = 'print_simplified_tax_invoice';

  Future<List<SimplifiedTaxInvoiceModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => SimplifiedTaxInvoiceModel.fromJson(e)).toList();
  }

  Future<List<SimplifiedTaxInvoiceModel>> getDummy(Map<String, dynamic> body) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      List<Map<String, dynamic>> data = ref.read(dummyDataSimplifiedTaxInvoice);
      return data.map((e) => SimplifiedTaxInvoiceModel.fromJson(e)).toList();
    } catch (e, stx) {
      debugPrint("Error in getDummy: $e");
      debugPrint("Stack trace: $stx");
      return [];
    }
  }
}

final apiSimplifiedTaxInvoice = Provider<SimplifiedTaxInvoiceApi>((ref) => SimplifiedTaxInvoiceApi(ref: ref));

final dummyDataSimplifiedTaxInvoice = Provider<List<Map<String, dynamic>>>((ref) {
  return [
    {
      "header": {
        "title": "ใบเสร็จรับเงิน / ใบกำกับภาษี (อย่างย่อ)",
        "company_logo_image_network": "https://play-lh.googleusercontent.com/09bryua3mfaR8lVaRZL4ZFmIHYXndC1aYdyrn7NSpPl13YHV-vQ2n0wi0xNk4Wdrft8",
        "company_name": "(UAT) เทสระบบ 1",
        "company_address": "99/122 ห้อง D-04  แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร 10210",
        "company_phone_number": "(UAT) เทสระบบ 1",
        "company_tax_id": "0105566144399",
        "employee_name": "Admin Kinn แจ้งวัฒนะ",
        "customer_name": "บริษัท ตำกระเทย เรสเทอรองต์ พลัส จำกัด",
        "table_number": "B1, B2",
        "docu_no": "SIKCWKCW680611-0002",
        "docu_date": "2025-06-11T00:00:00Z"
      },
      "details": [
        {"list_no": 1, "item_name": "Ushi Buffet (ผู้ใหญ่) (บุฟเฟ่ต์)", "unit_price": 488, "quantity": 2, "amount": 976},
        {"list_no": 2, "item_name": "Ushi Buffet (เด็ก) (บุฟเฟ่ต์)", "unit_price": 240, "quantity": 1, "amount": 240},
        {"list_no": 3, "item_name": "ปลาหมึกบั้ง (บุฟเฟ่ต์)", "unit_price": 0, "quantity": 4, "amount": 0},
        {"list_no": 4, "item_name": "เครื่องดื่ม Buffet (ผู้ใหญ่) (บุฟเฟ่ต์)", "unit_price": 39, "quantity": 1, "amount": 39},
        {"list_no": 5, "item_name": "ฺBottle น้ำแดงแฟนต้า (บุฟเฟ่ต์)", "unit_price": 0, "quantity": 3, "amount": 0},
        {"list_no": 6, "item_name": "ฺBottle น้ำโค้ก Buffet 1111 (บุฟเฟ่ต์)", "unit_price": 0, "quantity": 3, "amount": 0}
      ],
      "footer": {
        "total_items": 14,
        "total_amount": 1255,
        "service_charge": 0,
        "discounts": [],
        "total_discount": 0,
        "vat_included": 82.1,
        "net_amount": 1255,
        "cash_received": 0,
        "change": 0,
        "payment_methods": [
          {"amount": 1255, "payment_method": "โอนเงิน"}
        ],
        "categories": [
          {"category_name": "(B) เครื่องดื่ม Refill", "quantity": 6, "amount": 0},
          {"category_name": "(B) เนื้อสัตว์", "quantity": 4, "amount": 0},
          {"category_name": "บุฟเฟต์", "quantity": 4, "amount": 1255}
        ],
        "total_categories_amount": 1255,
        "points": [
          {"point_name": "คะแนนสะสมยอดยกมา", "point_value": "2"},
          {"point_name": "คะแนนที่ใช้ไป", "point_value": "(0)"},
          {"point_name": "คะแนนสะสมจากการซื้อครั้งนี้", "point_value": "0"},
          {"point_name": "รวมคะแนนสะสมปัจจุบัน", "point_value": "2"}
        ]
      }
    },
    {
      "header": {
        "title": "ใบเสร็จรับเงิน / ใบกำกับภาษี (อย่างย่อ)",
        "company_logo_image_network": "https://play-lh.googleusercontent.com/09bryua3mfaR8lVaRZL4ZFmIHYXndC1aYdyrn7NSpPl13YHV-vQ2n0wi0xNk4Wdrft8",
        "company_name": "(UAT) เทสระบบ 1",
        "company_address": "99/122 ห้อง D-04  แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร 10210",
        "company_phone_number": "(UAT) เทสระบบ 1",
        "company_tax_id": "0105566144399",
        "employee_name": "Admin Kinn แจ้งวัฒนะ",
        "customer_name": "เพชรนรินทร์ สกุลก้องเกียรติ",
        "table_number": "1",
        "docu_no": "SIKCWKCW680611-0001",
        "docu_date": "2025-06-11T00:00:00Z"
      },
      "details": [
        {"list_no": 1, "item_name": "คินส์คนเดียว+โค้ก 1 กระป๋อง", "unit_price": 220, "quantity": 3, "amount": 660},
        {"list_no": 2, "item_name": "ซุปชาบูน้ำใส (Option)", "unit_price": 0, "quantity": 3, "amount": 0},
        {"list_no": 3, "item_name": "ข้าวผัดกระเทียม (Option)", "unit_price": 0, "quantity": 3, "amount": 0},
        {"list_no": 4, "item_name": "เนื้อเสือร้องไห้ (Option)", "unit_price": 59, "quantity": 6, "amount": 354},
        {"list_no": 5, "item_name": "คินส์คนเดียว+โค้ก 1 กระป๋อง", "unit_price": 220, "quantity": 3, "amount": 660},
        {"list_no": 6, "item_name": "ซุปชาบูน้ำใส (Option)", "unit_price": 0, "quantity": 3, "amount": 0},
        {"list_no": 7, "item_name": "ข้าวผัดกระเทียม (Option)", "unit_price": 0, "quantity": 3, "amount": 0},
        {"list_no": 8, "item_name": "เนื้อเสือร้องไห้ (Option)", "unit_price": 59, "quantity": 6, "amount": 354}
      ],
      "footer": {
        "total_items": 30,
        "total_amount": 2028,
        "service_charge": 0,
        "discounts": [
          {"discount_name": "ส่วนลดวันเกิด", "discount_value": -100}
        ],
        "total_discount": -100,
        "vat_included": 126.13,
        "net_amount": 1928,
        "cash_received": 500,
        "change": 172,
        "payment_methods": [
          {"amount": 328, "payment_method": "เงินสด"},
          {"amount": 1000, "payment_method": "โอนเงิน"},
          {"amount": 300, "payment_method": "บัตรเครดิต"},
          {"amount": 100, "payment_method": "Voucher"},
          {"amount": 200, "payment_method": "เครดิตสินเชื่อ"}
        ],
        "categories": [
          {"category_name": "Take Away", "quantity": 6, "amount": 1320},
          {"category_name": "ข้าวและเครื่องจิ้ม", "quantity": 6, "amount": 0},
          {"category_name": "ตัวเลือกน้ำซุป", "quantity": 6, "amount": 0},
          {"category_name": "เนื้อสัตว์", "quantity": 12, "amount": 708}
        ],
        "total_categories_amount": 2028,
        "points": [
          {"point_name": "คะแนนสะสมยอดยกมา", "point_value": "0"},
          {"point_name": "คะแนนที่ใช้ไป", "point_value": "(0)"},
          {"point_name": "คะแนนสะสมจากการซื้อครั้งนี้", "point_value": "0"},
          {"point_name": "รวมคะแนนสะสมปัจจุบัน", "point_value": "0"}
        ]
      }
    }
  ];
});
