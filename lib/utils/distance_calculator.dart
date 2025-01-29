import 'dart:math';

/// คำนวณระยะทางระหว่าง 2 พิกัด
double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371000; // เมตร
  final dLat = _degreesToRadians(lat2 - lat1);
  final dLon = _degreesToRadians(lon2 - lon1);

  final a = pow(sin(dLat / 2), 2) +
      cos(_degreesToRadians(lat1)) *
          cos(_degreesToRadians(lat2)) *
          pow(sin(dLon / 2), 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c; // ระยะทางเป็นเมตร
}

double _degreesToRadians(double degrees) => degrees * pi / 180;
