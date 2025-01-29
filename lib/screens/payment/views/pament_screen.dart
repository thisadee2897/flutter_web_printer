import 'package:flutter_web_printer/apps/app_exports.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documentPaymentDTState = ref.watch(documentPaymentDTProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Center(
        child: SizedBox(
          width: 595,
          child: ListView.builder(
            itemCount: ref.watch(documentWidgetProvider).length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(5),
                  ref.watch(documentWidgetProvider)[index],
                  const Gap(5),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
