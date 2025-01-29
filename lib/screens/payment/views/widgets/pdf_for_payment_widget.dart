import 'package:flutter_web_printer/apps/app_exports.dart';

class PDFForPayMentWidget extends ConsumerWidget {
  final List<DocumentPaymentDTModel> data;
  const PDFForPayMentWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var comapnyTextStyle = TextStyle(
      fontFamily: GoogleFonts.prompt().fontFamily,
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(94, 100, 112, 1),
    );
    final documentPaymentState = ref.watch(documentPaymentProvider);
    return Container(
      color: const Color.fromRGBO(249, 250, 252, 1),
      height: 842,
      width: 595,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeaderPrinter(comapnyTextStyle: comapnyTextStyle),
          const Gap(10),
          Container(
            width: 563,
            height: 568,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromRGBO(215, 218, 224, 1), width: 0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SubHeaderBillWidget(),
                Container(
                  padding: const EdgeInsets.only(right: 8),
                  height: 28,
                  width: 531,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(236, 247, 255, 1),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Row(
                    children: [
                      TextHDWidget(
                        width: 30,
                        textAlign: TextAlign.end,
                        title: 'ลำดับ',
                      ),
                      TextHDWidget(
                        width: 0,
                        title: 'รายการ',
                      ),
                      TextHDWidget(
                        width: 100,
                        title: 'วันที่ใบกำกับ',
                      ),
                      TextHDWidget(
                        width: 100,
                        textAlign: TextAlign.end,
                        title: 'จำนวนเงินจ่าย',
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          padding: const EdgeInsets.only(right: 8),
                          height: 30,
                          width: 531,
                          child: Row(
                            children: [
                              TextDTWidget(
                                width: 30,
                                textAlign: TextAlign.end,
                                title: data[index].paymentDtListno.digits(0),
                              ),
                              TextDTWidget(
                                width: 0,
                                title: data[index].receiveHdDocuno.toString(),
                              ),
                              TextDTWidget(
                                width: 100,
                                title: data[index].receiveHdDocudate.dateTHFormApi,
                                color: const Color.fromRGBO(26, 28, 33, 1),
                              ),
                              TextDTWidget(
                                width: 100,
                                textAlign: TextAlign.end,
                                title: num.parse(data[index].paymentDtPaymentamount ?? '0').digits(2),
                                color: const Color.fromRGBO(26, 28, 33, 1),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 531,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(
                          color: Color.fromRGBO(215, 218, 224, 1),
                          thickness: 0.5,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.prompt().fontFamily,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(26, 28, 33, 1),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      num.parse(documentPaymentState.value?.paymentHdAmount ?? '0').digits(2),
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.prompt().fontFamily,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromRGBO(0, 100, 176, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        const Divider(
                          color: Color.fromRGBO(215, 218, 224, 1),
                          thickness: 0.5,
                          height: 1,
                        ),
                        Text('หมายเหตุ', style: comapnyTextStyle),
                        Text("${documentPaymentState.value?.paymentHdRemark}", style: comapnyTextStyle),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('บัญชีธนาคาร', style: comapnyTextStyle),
                                Text(
                                  "${documentPaymentState.value?.bankName}",
                                  style: comapnyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                              ],
                            ),
                            const Gap(50),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('เลขบัญชี', style: comapnyTextStyle),
                                Text(
                                  "${documentPaymentState.value?.branchBankbookBankbookno}",
                                  style: comapnyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('จำนวนเงิน (ตัวอักษร)', style: comapnyTextStyle),
                                Text(NumberToThaiWords.convert(double.parse(documentPaymentState.value?.paymentHdNetamnt ?? '0')),
                                    style: comapnyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('รวมทั้งสิ้น', style: comapnyTextStyle),
                                Text(double.parse(documentPaymentState.value?.paymentHdNetamnt ?? '0').digits(2),
                                    style: comapnyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                        const Gap(20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FooterWidget(
                title: "ผู้เบิกจ่าย",
                fullname: "${documentPaymentState.value?.fullname}",
                date: "${documentPaymentState.value?.paymentHdDocudate.dateTHFormApi}",
              ),
              const FooterWidget(
                title: "ผู้อนุมัติจ่าย",
                fullname: "(..........................................................................)",
                date: "วันที่.........................................",
              ),
              const FooterWidget(
                title: "ผู้รับเงิน",
                fullname: "(..........................................................................)",
                date: "วันที่.........................................",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  final String title;
  final String fullname;
  final String date;
  const FooterWidget({
    super.key,
    required this.title,
    required this.fullname,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    var comapnyTextStyle = TextStyle(
      fontFamily: GoogleFonts.prompt().fontFamily,
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(94, 100, 112, 1),
    );
    return SizedBox(
      width: 149,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: comapnyTextStyle),
          const Gap(10),
          Text('..........................................................................', style: comapnyTextStyle),
          Text(
            fullname,
            style: comapnyTextStyle.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            date,
            style: comapnyTextStyle.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class SubHeaderBillWidget extends ConsumerWidget {
  const SubHeaderBillWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(documentPaymentProvider);
    var textStyle = TextStyle(
      fontFamily: GoogleFonts.prompt().fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(94, 100, 112, 1),
    );
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: state.when(
          data: (data) {
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Billed to', style: textStyle),
                      Text(data.contactName.toString(), style: textStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                      Text(data.contactAddress.toString(), style: textStyle),
                      Text(data.contactTel.toString(), style: textStyle),
                      Text('เลขประจำตัวผู้เสียภาษี ', style: textStyle),
                      Text(data.contactTaxid.toString(), style: textStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 32,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('เลขที่', style: textStyle),
                              Text(data.paymentHdDocuno.toString(), style: textStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('รหัสผู้ขาย', style: textStyle),
                              Text(data.contactCode.toString(), style: textStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('วันที่', style: textStyle),
                              Text(data.paymentHdDocudate.dateTHFormApi, style: textStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Text('Error: $error'),
        ));
  }
}

class HeaderPrinter extends StatelessWidget {
  const HeaderPrinter({
    super.key,
    required this.comapnyTextStyle,
  });

  final TextStyle comapnyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 147,
            height: 71,
            child: Image.asset(imgLogo),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 78,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('ใบจ่ายเงิน', style: context.titleMediumBold),
                  Text('บริษัท เทค แคร์ โซลูชั่น จำกัด', style: comapnyTextStyle),
                  Text('ที่อยู่: 88/88 หมู่ 20 ต.บ้านเป็ด อ.เมืองขอนแก่น จ.ขอนแก่น 40000', style: comapnyTextStyle),
                  Text('โทร: 06-5464-5952', style: comapnyTextStyle),
                  Text('เลขประจำตัวผู้เสียภาษี: 00XXXXX1234X0XX', style: comapnyTextStyle),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
