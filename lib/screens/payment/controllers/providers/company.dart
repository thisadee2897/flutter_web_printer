import 'package:flutter_web_printer/apps/app_exports.dart';

class CompanyNotifier extends StateNotifier<AsyncValue<CompanyModel>> {
  CompanyNotifier(this.ref) : super(const AsyncValue.data(CompanyModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(CompanyModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyModel response = await ref.read(apiCompany).get(
        {"master_company_id": id},
      );

      return response;
    });
    if (state.hasValue) {
      ref.read(companyDataProvider.notifier).state = state.value!;
    }
  }
}

final companyProvider = StateNotifierProvider<CompanyNotifier, AsyncValue<CompanyModel>>((ref) => CompanyNotifier(ref));
final companyDataProvider = StateProvider<CompanyModel>((ref) => const CompanyModel());
