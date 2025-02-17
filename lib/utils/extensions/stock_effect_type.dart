extension StockEffect on num? {
  String get stockEffectType {
    switch (this) {
      case 1:
        return 'เพิ่ม';
      case -1:
        return 'ลด';
      default:
        return '-';
    }
  }
}
