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
        "company_name": "บริษัท คินเดอะบูตะ สาขาขอนแก่น",
        "company_address": "99/122 หมู่ 2 ตำบลบ้านเป็ด อำเภอเมืองขอนแก่น จังหวัดขอนแก่น 40000",
        "company_phone_number": "099338585828",
        "company_tax_id": "0123456789123",
        "employee_name": "ขวัญฤทัย ใจแสนดี",
        "customer_name": "คุณทวีศักดิ์ จริงใจ",
        "table_number": "B2",
        "docu_no": "SIKCWKC1680522-001",
        "docu_date": "2025-05-22T08:04:56Z"
      },
      "details": [
        {"list_no": 1, "item_name": "น้ำสไปร์ท", "unit_price": 20.00, "quantity": 4, "amount": 80.00},
        {"list_no": 2, "item_name": "น้ำเปล่า", "unit_price": 10.00, "quantity": 2, "amount": 20.00},
        {"list_no": 3, "item_name": "กระเพราหมู", "unit_price": 50.00, "quantity": 10, "amount": 500.00},
        {"list_no": 4, "item_name": "ข้าวผัดกะเพรา", "unit_price": 50.00, "quantity": 2, "amount": 100.00},
        {"list_no": 5, "item_name": "น้ำส้ม", "unit_price": 30.00, "quantity": 1, "amount": 30.00},
        {"list_no": 6, "item_name": "ขนมจีบ", "unit_price": 20.00, "quantity": 2, "amount": 40.00},
        {"list_no": 7, "item_name": "ขนมปังปิ้ง", "unit_price": 15.00, "quantity": 2, "amount": 30.00}
      ],
      "footer": {
        "total_items": 16,
        "total_amount": 600.00,
        "service_charge": 60.00,
        "discounts": [
          {"discount_name": "ส่วนลดเอ็นเตอร์เทน", "discount_value": -36.00},
          {"discount_name": "ส่วนลดค่าเครื่องดื่ม 10%", "discount_value": -10.00}
        ],
        "total_discount": -46.00,
        "vat_included": 42.98,
        "net_amount": 657.00,
        "cash_received": 600.00,
        "change": 0.00,
        "payment_methods": [
          {"payment_method": "เงินสด", "amount": 600.00},
          {"payment_method": "บัตรเครดิต", "amount": 10.00},
          {"payment_method": "โอนเงิน", "amount": 2.00},
          // Giftvoucher, Coupon, Points, etc. can be added here
          {"payment_method": "บัตรกำนัล", "amount": 5.00},
          {"payment_method": "คูปองส่วนลด", "amount": 3.00},
        ],
        "categories": [
          {"category_name": "เครื่องดื่ม", "quantity": 6, "amount": 100.00},
          {"category_name": "อาหารตามสั่ง", "quantity": 10, "amount": 500.00}
        ],
        "total_categories_amount": 600.00,
        "points": [
          {"point_name": "คะแนนสะสมยอดยกมา", "point_value": "305.00"},
          {"point_name": "คะแนนที่ใช้ไป", "point_value": "(0.00)"},
          {"point_name": "คะแนนสะสมจากการซื้อครั้งนี้", "point_value": "+1.00"},
          {"point_name": "รวมคะแนนสะสมปัจจุบัน", "point_value": "306.00"}
        ]
      }
    },
    {
      "header": {
        "title": "ใบเสร็จรับเงิน / ใบกำกับภาษี (อย่างย่อ)",
        "company_logo_image_network": "https://play-lh.googleusercontent.com/09bryua3mfaR8lVaRZL4ZFmIHYXndC1aYdyrn7NSpPl13YHV-vQ2n0wi0xNk4Wdrft8",
        "company_name": "บริษัท คินเดอะบูตะ สาขาขอนแก่น",
        "company_address": "99/122 หมู่ 2 ตำบลบ้านเป็ด อำเภอเมืองขอนแก่น จังหวัดขอนแก่น 40000",
        "company_phone_number": "099338585828",
        "company_tax_id": "0123456789123",
        "employee_name": "ขวัญฤทัย ใจแสนดี",
        "customer_name": "คุณทวีศักดิ์ จริงใจ",
        "table_number": "B2",
        "docu_no": "SIKCWKC1680522-002",
        "docu_date": "2025-05-22T08:04:56Z"
      },
      "details": [
        {"list_no": 1, "item_name": "น้ำสไปร์ท", "unit_price": 20.00, "quantity": 4, "amount": 80.00},
        {"list_no": 2, "item_name": "น้ำเปล่า", "unit_price": 10.00, "quantity": 2, "amount": 20.00},
        {"list_no": 3, "item_name": "กระเพราหมู", "unit_price": 50.00, "quantity": 10, "amount": 500.00},
        {"list_no": 4, "item_name": "ข้าวผัดกะเพรา", "unit_price": 50.00, "quantity": 2, "amount": 100.00},
        {"list_no": 5, "item_name": "น้ำส้ม", "unit_price": 30.00, "quantity": 1, "amount": 30.00},
        {"list_no": 6, "item_name": "ขนมจีบ", "unit_price": 20.00, "quantity": 2, "amount": 40.00},
        {"list_no": 7, "item_name": "ขนมปังปิ้ง", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 8, "item_name": "ไก่ทอด", "unit_price": 25.00, "quantity": 2, "amount": 50.00},
        {"list_no": 9, "item_name": "สลัดผัก", "unit_price": 35.00, "quantity": 1, "amount": 35.00},
        {"list_no": 10, "item_name": "ข้าวมันไก่", "unit_price": 60.00, "quantity": 1, "amount": 60.00},
        {"list_no": 11, "item_name": "ข้าวผัด", "unit_price": 40.00, "quantity": 1, "amount": 40.00},
        {"list_no": 12, "item_name": "น้ำแข็ง", "unit_price": 5.00, "quantity": 2, "amount": 10.00},
        {"list_no": 13, "item_name": "น้ำอัดลม", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 14, "item_name": "ขนมหวาน", "unit_price": 20.00, "quantity": 1, "amount": 20.00},
        {"list_no": 15, "item_name": "ผลไม้", "unit_price": 25.00, "quantity": 1, "amount": 25.00},
        {"list_no": 16, "item_name": "ขนมปังสังข์ทอง", "unit_price": 10.00, "quantity": 2, "amount": 20.00},
        {"list_no": 17, "item_name": "น้ำผลไม้", "unit_price": 30.00, "quantity": 1, "amount": 30.00},
        {"list_no": 18, "item_name": "ขนมปังไส้กรอก", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 19, "item_name": "ขนมปังไส้ครีม", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 20, "item_name": "ขนมปังไส้ถั่ว", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 21, "item_name": "ขนมปังไส้ช็อกโกแลต", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 22, "item_name": "ขนมปังไส้คัสตาร์ด", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 23, "item_name": "ขนมปังไส้เนย", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 24, "item_name": "ขนมปังไส้แยม", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 25, "item_name": "ขนมปังไส้ครีมชีส", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 26, "item_name": "ขนมปังไส้เนยถั่ว", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 27, "item_name": "ขนมปังไส้ครีมสด", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 28, "item_name": "ขนมปังไส้ช็อกโกแลตชิพ", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 29, "item_name": "ขนมปังไส้คัสตาร์ดครีม", "unit_price": 15.00, "quantity": 2, "amount": 30.00},
        {"list_no": 30, "item_name": "ขนมปังไส้เนยสด", "unit_price": 15.00, "quantity": 2, "amount": 30.00}
      ],
      "footer": {
        "total_items": 16,
        "total_amount": 600.00,
        "service_charge": 60.00,
        "discounts": [
          {"discount_name": "ส่วนลดเอ็นเตอร์เทน", "discount_value": -36.00},
          {"discount_name": "ส่วนลดค่าเครื่องดื่ม 10%", "discount_value": -10.00},
          {"discount_name": "ส่วนลดพิเศษสำหรับลูกค้าประจำ", "discount_value": -5.00},
          {"discount_name": "ส่วนลดโปรโมชั่นพิเศษ", "discount_value": -5.00},
          {"discount_name": "ส่วนลดสำหรับสมาชิก", "discount_value": -5.00},
          {"discount_name": "ส่วนลดสำหรับการสั่งซื้อออนไลน์", "discount_value": -5.00},
          {"discount_name": "ส่วนลดสำหรับการชำระเงินล่วงหน้า", "discount_value": -5.00}
        ],
        "total_discount": -46.00,
        "vat_included": 42.98,
        "net_amount": 657.00,
        "cash_received": 600.00,
        "change": 0.00,
        "payment_methods": [
          {"payment_method": "เงินสด", "amount": 600.00},
          {"payment_method": "บัตรเครดิต", "amount": 10.00},
          {"payment_method": "โอนเงิน", "amount": 2.00}
        ],
        "categories": [
          {"category_name": "เครื่องดื่ม", "quantity": 6, "amount": 100.00},
          {"category_name": "อาหารตามสั่ง", "quantity": 10, "amount": 500.00},
          {"category_name": "ขนมปัง", "quantity": 4, "amount": 100.00},
          {"category_name": "ของหวาน", "quantity": 2, "amount": 50.00},
          {"category_name": "ผลไม้", "quantity": 1, "amount": 25.00},
          {"category_name": "ขนมจีบ", "quantity": 2, "amount": 40.00},
          {"category_name": "ข้าวผัด", "quantity": 1, "amount": 40.00}
        ],
        "total_categories_amount": 600.00,
        "points": [
          {"point_name": "คะแนนสะสมยอดยกมา", "point_value": "305.00"},
          {"point_name": "คะแนนที่ใช้ไป", "point_value": "(0.00)"},
          {"point_name": "คะแนนสะสมจากการซื้อครั้งนี้", "point_value": "+1.00"},
          {"point_name": "รวมคะแนนสะสมปัจจุบัน", "point_value": "306.00"}
        ]
      }
    }
  ];
});
