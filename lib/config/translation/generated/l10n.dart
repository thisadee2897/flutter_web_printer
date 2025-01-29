// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Trans {
  Trans();

  static Trans? _current;

  static Trans get current {
    assert(_current != null,
        'No instance of Trans was loaded. Try to initialize the Trans delegate before accessing Trans.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Trans> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Trans();
      Trans._current = instance;

      return instance;
    });
  }

  static Trans of(BuildContext context) {
    final instance = Trans.maybeOf(context);
    assert(instance != null,
        'No instance of Trans present in the widget tree. Did you add Trans.delegate in localizationsDelegates?');
    return instance!;
  }

  static Trans? maybeOf(BuildContext context) {
    return Localizations.of<Trans>(context, Trans);
  }

  /// `เพิ่มพนักงาน`
  String get insertEmployee {
    return Intl.message(
      'เพิ่มพนักงาน',
      name: 'insertEmployee',
      desc: '',
      args: [],
    );
  }

  /// `เข้างาน`
  String get checkIn {
    return Intl.message(
      'เข้างาน',
      name: 'checkIn',
      desc: '',
      args: [],
    );
  }

  /// `ออกงาน`
  String get checkOut {
    return Intl.message(
      'ออกงาน',
      name: 'checkOut',
      desc: '',
      args: [],
    );
  }

  /// `บันทึก`
  String get save {
    return Intl.message(
      'บันทึก',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `ยกเลิก`
  String get cancel {
    return Intl.message(
      'ยกเลิก',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `แก้ไข`
  String get edit {
    return Intl.message(
      'แก้ไข',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `ลบ`
  String get delete {
    return Intl.message(
      'ลบ',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `ค้นหา`
  String get search {
    return Intl.message(
      'ค้นหา',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `รีเซ็ต`
  String get reset {
    return Intl.message(
      'รีเซ็ต',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `บันทึกสำเร็จ`
  String get save_success {
    return Intl.message(
      'บันทึกสำเร็จ',
      name: 'save_success',
      desc: '',
      args: [],
    );
  }

  /// `บันทึกไม่สำเร็จ`
  String get save_fail {
    return Intl.message(
      'บันทึกไม่สำเร็จ',
      name: 'save_fail',
      desc: '',
      args: [],
    );
  }

  /// `ลบสำเร็จ`
  String get delete_success {
    return Intl.message(
      'ลบสำเร็จ',
      name: 'delete_success',
      desc: '',
      args: [],
    );
  }

  /// `ลบไม่สำเร็จ`
  String get delete_fail {
    return Intl.message(
      'ลบไม่สำเร็จ',
      name: 'delete_fail',
      desc: '',
      args: [],
    );
  }

  /// `คุณแน่ใจหรือไม่ว่าต้องการลบรายการนี้?`
  String get confirm_delete {
    return Intl.message(
      'คุณแน่ใจหรือไม่ว่าต้องการลบรายการนี้?',
      name: 'confirm_delete',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยัน`
  String get confirm {
    return Intl.message(
      'ยืนยัน',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `ออกจากระบบ`
  String get logout {
    return Intl.message(
      'ออกจากระบบ',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get login {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `ลงชื่อเข้าใช้`
  String get signIn {
    return Intl.message(
      'ลงชื่อเข้าใช้',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `จดจำฉัน`
  String get rememberMe {
    return Intl.message(
      'จดจำฉัน',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `ลืมรหัสผ่าน`
  String get forgotPassword {
    return Intl.message(
      'ลืมรหัสผ่าน',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อผู้ใช้`
  String get username {
    return Intl.message(
      'ชื่อผู้ใช้',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `รหัสผ่าน`
  String get password {
    return Intl.message(
      'รหัสผ่าน',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง`
  String get usernameOrPasswordIncorrect {
    return Intl.message(
      'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง',
      name: 'usernameOrPasswordIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `ช่วยในการบริหารจัดการทรัพยากรบุคคลในองค์กร\nช่วยอำนวยความสะดวกในการดำเนินงานต่าง ๆ`
  String get title1 {
    return Intl.message(
      'ช่วยในการบริหารจัดการทรัพยากรบุคคลในองค์กร\nช่วยอำนวยความสะดวกในการดำเนินงานต่าง ๆ',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `ระบบที่ทันสมัยและใช้งานง่าย สามารถวางกลยุทธ์\nการพัฒนาองค์กรได้อย่างมีประสิทธิภาพ`
  String get title2 {
    return Intl.message(
      'ระบบที่ทันสมัยและใช้งานง่าย สามารถวางกลยุทธ์\nการพัฒนาองค์กรได้อย่างมีประสิทธิภาพ',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `บริหารอย่างมีประสิทธิภาพ`
  String get Efficientlymanage {
    return Intl.message(
      'บริหารอย่างมีประสิทธิภาพ',
      name: 'Efficientlymanage',
      desc: '',
      args: [],
    );
  }

  /// `ตอบโจทย์ทุกความต้องการ`
  String get Meets_all_needs {
    return Intl.message(
      'ตอบโจทย์ทุกความต้องการ',
      name: 'Meets_all_needs',
      desc: '',
      args: [],
    );
  }

  /// `การติดตามผลการปฏิบัติงาน การจัดการเวลาการทำงาน รวดเร็ว และความแม่นยำในการจัดการข้อมูล`
  String get title3 {
    return Intl.message(
      'การติดตามผลการปฏิบัติงาน การจัดการเวลาการทำงาน รวดเร็ว และความแม่นยำในการจัดการข้อมูล',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยันการเข้างาน`
  String get Check_In_Confirmation {
    return Intl.message(
      'ยืนยันการเข้างาน',
      name: 'Check_In_Confirmation',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกรหัสพนักงาน`
  String get Please_enter_Employee_ID {
    return Intl.message(
      'กรุณากรอกรหัสพนักงาน',
      name: 'Please_enter_Employee_ID',
      desc: '',
      args: [],
    );
  }

  /// `คุณอยู่ภายในบริเวณที่ทำงาน`
  String get You_are_in_the_work_area {
    return Intl.message(
      'คุณอยู่ภายในบริเวณที่ทำงาน',
      name: 'You_are_in_the_work_area',
      desc: '',
      args: [],
    );
  }

  /// `คุณไม่ได้อยู่ภายในบริเวณที่ทำงาน`
  String get You_are_not_in_the_work_area {
    return Intl.message(
      'คุณไม่ได้อยู่ภายในบริเวณที่ทำงาน',
      name: 'You_are_not_in_the_work_area',
      desc: '',
      args: [],
    );
  }

  /// `คุณสามารถเช็คอินเข้างานได้`
  String get You_can_check_in_to_work {
    return Intl.message(
      'คุณสามารถเช็คอินเข้างานได้',
      name: 'You_can_check_in_to_work',
      desc: '',
      args: [],
    );
  }

  /// `ไม่สามารถเช็คอินเข้างานได้`
  String get Cannot_check_in_to_work {
    return Intl.message(
      'ไม่สามารถเช็คอินเข้างานได้',
      name: 'Cannot_check_in_to_work',
      desc: '',
      args: [],
    );
  }

  /// `ข้อมูลส่วนตัว`
  String get My_Profile {
    return Intl.message(
      'ข้อมูลส่วนตัว',
      name: 'My_Profile',
      desc: '',
      args: [],
    );
  }

  /// `เวลาเข้างาน`
  String get Check_In_Time {
    return Intl.message(
      'เวลาเข้างาน',
      name: 'Check_In_Time',
      desc: '',
      args: [],
    );
  }

  /// `เวลาออกงาน`
  String get Check_out_time {
    return Intl.message(
      'เวลาออกงาน',
      name: 'Check_out_time',
      desc: '',
      args: [],
    );
  }

  /// `สแกนใบหน้า`
  String get face_scan {
    return Intl.message(
      'สแกนใบหน้า',
      name: 'face_scan',
      desc: '',
      args: [],
    );
  }

  /// `สำเร็จแล้ว`
  String get Successfully {
    return Intl.message(
      'สำเร็จแล้ว',
      name: 'Successfully',
      desc: '',
      args: [],
    );
  }

  /// `คุณลงชื่อเข้างานเรียบร้อยแล้ว\nขอให้การทำงานของคุณวันนี้ราบรื่นไปได้ด้วยดี`
  String get You_have_successfully_checked_in {
    return Intl.message(
      'คุณลงชื่อเข้างานเรียบร้อยแล้ว\nขอให้การทำงานของคุณวันนี้ราบรื่นไปได้ด้วยดี',
      name: 'You_have_successfully_checked_in',
      desc: '',
      args: [],
    );
  }

  /// `ไปที่หน้าหลัก`
  String get Go_to_Home {
    return Intl.message(
      'ไปที่หน้าหลัก',
      name: 'Go_to_Home',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยันการออกงาน`
  String get Check_Out_Confirmation {
    return Intl.message(
      'ยืนยันการออกงาน',
      name: 'Check_Out_Confirmation',
      desc: '',
      args: [],
    );
  }

  /// `คุณสามารถออกงานได้`
  String get You_can_check_Out_to_work {
    return Intl.message(
      'คุณสามารถออกงานได้',
      name: 'You_can_check_Out_to_work',
      desc: '',
      args: [],
    );
  }

  /// `ไม่สามารถออกงานได้`
  String get Cannot_check_Out_to_work {
    return Intl.message(
      'ไม่สามารถออกงานได้',
      name: 'Cannot_check_Out_to_work',
      desc: '',
      args: [],
    );
  }

  /// `คุณลงชื่อออกงานเรียบร้อยแล้ว\nขอบคุณสำหรับการทำงานในวันนี้ ได้เวลาพักผ่อน`
  String get You_have_successfully_checked_out {
    return Intl.message(
      'คุณลงชื่อออกงานเรียบร้อยแล้ว\nขอบคุณสำหรับการทำงานในวันนี้ ได้เวลาพักผ่อน',
      name: 'You_have_successfully_checked_out',
      desc: '',
      args: [],
    );
  }

  /// `ข่าวสาร`
  String get News {
    return Intl.message(
      'ข่าวสาร',
      name: 'News',
      desc: '',
      args: [],
    );
  }

  /// `อัพเดทวันนี้`
  String get To_day_update {
    return Intl.message(
      'อัพเดทวันนี้',
      name: 'To_day_update',
      desc: '',
      args: [],
    );
  }

  /// `ประกาศซ่อมท่อน้ำ`
  String get Announce_water_pipe_repair {
    return Intl.message(
      'ประกาศซ่อมท่อน้ำ',
      name: 'Announce_water_pipe_repair',
      desc: '',
      args: [],
    );
  }

  /// `อ่านเพิ่มเติม`
  String get Read_more {
    return Intl.message(
      'อ่านเพิ่มเติม',
      name: 'Read_more',
      desc: '',
      args: [],
    );
  }

  /// `เวลาทำงาน`
  String get Shift_timing {
    return Intl.message(
      'เวลาทำงาน',
      name: 'Shift_timing',
      desc: '',
      args: [],
    );
  }

  /// `กิจกรรมของคุณ`
  String get Your_activities {
    return Intl.message(
      'กิจกรรมของคุณ',
      name: 'Your_activities',
      desc: '',
      args: [],
    );
  }

  /// `ดูทั้งหมด`
  String get See_all {
    return Intl.message(
      'ดูทั้งหมด',
      name: 'See_all',
      desc: '',
      args: [],
    );
  }

  /// `ลาพักร้อน`
  String get Annual_Leave {
    return Intl.message(
      'ลาพักร้อน',
      name: 'Annual_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลากิจ`
  String get Business_Leave {
    return Intl.message(
      'ลากิจ',
      name: 'Business_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาไม่รับค่าจ้าง`
  String get Unpaid_Leave {
    return Intl.message(
      'ลาไม่รับค่าจ้าง',
      name: 'Unpaid_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาป่วย`
  String get Sick_Leave {
    return Intl.message(
      'ลาป่วย',
      name: 'Sick_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาคลอด`
  String get Maternity_Leave {
    return Intl.message(
      'ลาคลอด',
      name: 'Maternity_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาทหาร`
  String get Military_Leave {
    return Intl.message(
      'ลาทหาร',
      name: 'Military_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาอบรม`
  String get Training_Leave {
    return Intl.message(
      'ลาอบรม',
      name: 'Training_Leave',
      desc: '',
      args: [],
    );
  }

  /// `ลาทางศานา`
  String get Religious_Leave {
    return Intl.message(
      'ลาทางศานา',
      name: 'Religious_Leave',
      desc: '',
      args: [],
    );
  }

  /// `การลาของคุณ`
  String get Your_Leave {
    return Intl.message(
      'การลาของคุณ',
      name: 'Your_Leave',
      desc: '',
      args: [],
    );
  }

  /// `คัดลอกที่อยู่ตามบัตรประชาชน`
  String get Copy_address {
    return Intl.message(
      'คัดลอกที่อยู่ตามบัตรประชาชน',
      name: 'Copy_address',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกชื่อผู้ใช้`
  String get Please_enter_username {
    return Intl.message(
      'กรุณากรอกชื่อผู้ใช้',
      name: 'Please_enter_username',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกรหัสผ่าน`
  String get Please_enter_password {
    return Intl.message(
      'กรุณากรอกรหัสผ่าน',
      name: 'Please_enter_password',
      desc: '',
      args: [],
    );
  }

  /// `ข้อมูลพนักงาน`
  String get emp__employee_info {
    return Intl.message(
      'ข้อมูลพนักงาน',
      name: 'emp__employee_info',
      desc: '',
      args: [],
    );
  }

  /// `รหัสพนักงาน`
  String get emp__employee_id {
    return Intl.message(
      'รหัสพนักงาน',
      name: 'emp__employee_id',
      desc: '',
      args: [],
    );
  }

  /// `สถานะพนักงาน`
  String get emp__employee_status {
    return Intl.message(
      'สถานะพนักงาน',
      name: 'emp__employee_status',
      desc: '',
      args: [],
    );
  }

  /// `วันที่เริ่มงาน`
  String get emp__start_date {
    return Intl.message(
      'วันที่เริ่มงาน',
      name: 'emp__start_date',
      desc: '',
      args: [],
    );
  }

  /// `แผนก`
  String get emp__department {
    return Intl.message(
      'แผนก',
      name: 'emp__department',
      desc: '',
      args: [],
    );
  }

  /// `ตำแหน่ง`
  String get emp__position {
    return Intl.message(
      'ตำแหน่ง',
      name: 'emp__position',
      desc: '',
      args: [],
    );
  }

  /// `ประเภทพนักงาน`
  String get emp__employee_type {
    return Intl.message(
      'ประเภทพนักงาน',
      name: 'emp__employee_type',
      desc: '',
      args: [],
    );
  }

  /// `เพศ`
  String get emp__gender {
    return Intl.message(
      'เพศ',
      name: 'emp__gender',
      desc: '',
      args: [],
    );
  }

  /// `คำนำหน้า`
  String get emp__title {
    return Intl.message(
      'คำนำหน้า',
      name: 'emp__title',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อ (ไทย)`
  String get emp__first_name_th {
    return Intl.message(
      'ชื่อ (ไทย)',
      name: 'emp__first_name_th',
      desc: '',
      args: [],
    );
  }

  /// `นามสกุล (ไทย)`
  String get emp__last_name_th {
    return Intl.message(
      'นามสกุล (ไทย)',
      name: 'emp__last_name_th',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อ (อังกฤษ)`
  String get emp__first_name_en {
    return Intl.message(
      'ชื่อ (อังกฤษ)',
      name: 'emp__first_name_en',
      desc: '',
      args: [],
    );
  }

  /// `นามสกุล (อังกฤษ)`
  String get emp__last_name_en {
    return Intl.message(
      'นามสกุล (อังกฤษ)',
      name: 'emp__last_name_en',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อเล่น (ไทย)`
  String get emp__nickname_th {
    return Intl.message(
      'ชื่อเล่น (ไทย)',
      name: 'emp__nickname_th',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อเล่น (อังกฤษ)`
  String get emp__nickname_en {
    return Intl.message(
      'ชื่อเล่น (อังกฤษ)',
      name: 'emp__nickname_en',
      desc: '',
      args: [],
    );
  }

  /// `เลขประจำตัวประชาชน`
  String get emp__citizen_id {
    return Intl.message(
      'เลขประจำตัวประชาชน',
      name: 'emp__citizen_id',
      desc: '',
      args: [],
    );
  }

  /// `วันที่หมดอายุบัตรประจำตัวประชาชน`
  String get emp__citizen_id_expired_date {
    return Intl.message(
      'วันที่หมดอายุบัตรประจำตัวประชาชน',
      name: 'emp__citizen_id_expired_date',
      desc: '',
      args: [],
    );
  }

  /// `วันที่ออกบัตรประจำตัวประชาชน`
  String get emp__citizen_id_start_date {
    return Intl.message(
      'วันที่ออกบัตรประจำตัวประชาชน',
      name: 'emp__citizen_id_start_date',
      desc: '',
      args: [],
    );
  }

  /// `ออกที่`
  String get emp__issued_at {
    return Intl.message(
      'ออกที่',
      name: 'emp__issued_at',
      desc: '',
      args: [],
    );
  }

  /// `วันเกิด`
  String get emp__date_of_birth {
    return Intl.message(
      'วันเกิด',
      name: 'emp__date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `อายุ`
  String get emp__age {
    return Intl.message(
      'อายุ',
      name: 'emp__age',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่`
  String get emp__address {
    return Intl.message(
      'ที่อยู่',
      name: 'emp__address',
      desc: '',
      args: [],
    );
  }

  /// `ตำบล`
  String get emp__sub_district {
    return Intl.message(
      'ตำบล',
      name: 'emp__sub_district',
      desc: '',
      args: [],
    );
  }

  /// `อำเภอ`
  String get emp__district {
    return Intl.message(
      'อำเภอ',
      name: 'emp__district',
      desc: '',
      args: [],
    );
  }

  /// `จังหวัด`
  String get emp__province {
    return Intl.message(
      'จังหวัด',
      name: 'emp__province',
      desc: '',
      args: [],
    );
  }

  /// `รหัสไปรษณีย์`
  String get emp__postal_code {
    return Intl.message(
      'รหัสไปรษณีย์',
      name: 'emp__postal_code',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่ปัจจุบัน`
  String get emp__current_address {
    return Intl.message(
      'ที่อยู่ปัจจุบัน',
      name: 'emp__current_address',
      desc: '',
      args: [],
    );
  }

  /// `ตำบลปัจจุบัน`
  String get emp__current_sub_district {
    return Intl.message(
      'ตำบลปัจจุบัน',
      name: 'emp__current_sub_district',
      desc: '',
      args: [],
    );
  }

  /// `อำเภอปัจจุบัน`
  String get emp__current_district {
    return Intl.message(
      'อำเภอปัจจุบัน',
      name: 'emp__current_district',
      desc: '',
      args: [],
    );
  }

  /// `จังหวัดปัจจุบัน`
  String get emp__current_province {
    return Intl.message(
      'จังหวัดปัจจุบัน',
      name: 'emp__current_province',
      desc: '',
      args: [],
    );
  }

  /// `รหัสไปรษณีย์ปัจจุบัน`
  String get emp__current_postal_code {
    return Intl.message(
      'รหัสไปรษณีย์ปัจจุบัน',
      name: 'emp__current_postal_code',
      desc: '',
      args: [],
    );
  }

  /// `กรุ๊ปเลือด`
  String get emp__blood_group {
    return Intl.message(
      'กรุ๊ปเลือด',
      name: 'emp__blood_group',
      desc: '',
      args: [],
    );
  }

  /// `สัญชาติ`
  String get emp__nationality {
    return Intl.message(
      'สัญชาติ',
      name: 'emp__nationality',
      desc: '',
      args: [],
    );
  }

  /// `เชื้อชาติ`
  String get emp__race {
    return Intl.message(
      'เชื้อชาติ',
      name: 'emp__race',
      desc: '',
      args: [],
    );
  }

  /// `ศาสนา`
  String get emp__religion {
    return Intl.message(
      'ศาสนา',
      name: 'emp__religion',
      desc: '',
      args: [],
    );
  }

  /// `สถานะ`
  String get emp__status {
    return Intl.message(
      'สถานะ',
      name: 'emp__status',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทรศัพท์`
  String get emp__phone_number {
    return Intl.message(
      'เบอร์โทรศัพท์',
      name: 'emp__phone_number',
      desc: '',
      args: [],
    );
  }

  /// `อีเมล`
  String get emp__email {
    return Intl.message(
      'อีเมล',
      name: 'emp__email',
      desc: '',
      args: [],
    );
  }

  /// `คุณอยู่ภายในบริเวณที่ทำงาน`
  String get YouAreIntTheWorkArea {
    return Intl.message(
      'คุณอยู่ภายในบริเวณที่ทำงาน',
      name: 'YouAreIntTheWorkArea',
      desc: '',
      args: [],
    );
  }

  /// `คุณไม่ได้อยู่ในพื้นที่ทำงาน`
  String get checkOut__not_in_the_work_area {
    return Intl.message(
      'คุณไม่ได้อยู่ในพื้นที่ทำงาน',
      name: 'checkOut__not_in_the_work_area',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'checkOut__cannot_check_in_to_work:' key

  /// `โปรไฟล์ของฉัน`
  String get myProfile {
    return Intl.message(
      'โปรไฟล์ของฉัน',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `ตารางเวลา`
  String get Schedule {
    return Intl.message(
      'ตารางเวลา',
      name: 'Schedule',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกชื่อจริง`
  String get emp__reqiuredFirstName {
    return Intl.message(
      'กรุณากรอกชื่อจริง',
      name: 'emp__reqiuredFirstName',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกนามสกุล`
  String get emp__requiredLastname {
    return Intl.message(
      'กรุณากรอกนามสกุล',
      name: 'emp__requiredLastname',
      desc: '',
      args: [],
    );
  }

  /// `หน้าหลัก`
  String get home {
    return Intl.message(
      'หน้าหลัก',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `ปฏิทิน`
  String get calendar {
    return Intl.message(
      'ปฏิทิน',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `ลา`
  String get leave {
    return Intl.message(
      'ลา',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `บัญชี`
  String get account {
    return Intl.message(
      'บัญชี',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `กล้อง`
  String get camera {
    return Intl.message(
      'กล้อง',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `ถัดไป`
  String get next {
    return Intl.message(
      'ถัดไป',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `ค้นหาตำบล`
  String get emp__searchSubdistrict {
    return Intl.message(
      'ค้นหาตำบล',
      name: 'emp__searchSubdistrict',
      desc: '',
      args: [],
    );
  }

  /// `ไม่พบข้อมูล`
  String get No_data_found {
    return Intl.message(
      'ไม่พบข้อมูล',
      name: 'No_data_found',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาเลือก`
  String get text_dropDown_validate {
    return Intl.message(
      'กรุณาเลือก',
      name: 'text_dropDown_validate',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกเลขประจำตัวประชาชน`
  String get emp__requiredCitizenId {
    return Intl.message(
      'กรุณากรอกเลขประจำตัวประชาชน',
      name: 'emp__requiredCitizenId',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอก`
  String get text_input_validate {
    return Intl.message(
      'กรุณากรอก',
      name: 'text_input_validate',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกอีเมล`
  String get emailValidate {
    return Intl.message(
      'กรุณากรอกอีเมล',
      name: 'emailValidate',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่ตามบัตรประชาชน`
  String get addressForCardId {
    return Intl.message(
      'ที่อยู่ตามบัตรประชาชน',
      name: 'addressForCardId',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาอัพโหลดรูปภาพ`
  String get emp__please_upload_image {
    return Intl.message(
      'กรุณาอัพโหลดรูปภาพ',
      name: 'emp__please_upload_image',
      desc: '',
      args: [],
    );
  }

  /// `ปิด`
  String get close {
    return Intl.message(
      'ปิด',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `เปิด`
  String get open {
    return Intl.message(
      'เปิด',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `รูปภาพโปรไฟล์`
  String get profile_image {
    return Intl.message(
      'รูปภาพโปรไฟล์',
      name: 'profile_image',
      desc: '',
      args: [],
    );
  }

  /// `กำลังโหลด...`
  String get loading {
    return Intl.message(
      'กำลังโหลด...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Trans> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Trans> load(Locale locale) => Trans.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
