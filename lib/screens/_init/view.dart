// import 'package:flutter/material.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:lottie/lottie.dart';

class InitScreeen extends StatelessWidget {
  const InitScreeen({super.key});

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
              'Welcome',
              style: context.displayLarge.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
