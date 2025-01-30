// import 'package:flutter/material.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:lottie/lottie.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double minScale = context.screenHeight > context.screenWidth ? context.screenWidth : context.screenHeight;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              'assets/business-salesman.json',
              height: minScale * 0.8,
              width: minScale * 0.8,
            ),
            Text(
              'Data Not Found',
              style: context.displayLarge.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
