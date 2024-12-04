import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/api/purchaseorder_dt_api.dart';
import 'package:flutter_web_printer/data/purchaseorder_dt_data.dart';
import 'package:flutter_web_printer/models/purchaseorder_model.dart';

class PurchaseorderDTNotifier extends StateNotifier<AsyncValue<List<PurchaseorderModel>>> {
  PurchaseorderDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;

  Future<void> read() async {
    state = await AsyncValue.guard(() async {
      state = const AsyncValue.loading();
      List<PurchaseorderModel> response = await ref.read(apiPurchaseorderDT).get(
        {"purchaseorder_hd_id": 35},
      );
      ref.read(purchaseorderDTData.notifier).listData = response;
      return response;
    });
  }
}

final purchaseorderDTProvider = StateNotifierProvider<PurchaseorderDTNotifier, AsyncValue<List<PurchaseorderModel>>>((ref) => PurchaseorderDTNotifier(ref));
