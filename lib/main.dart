import 'package:flutter/material.dart';
import 'package:test_ali/views/beverages_view.dart';
import 'package:test_ali/views/explore_view.dart';
import 'package:test_ali/views/mycart_view.dart';
import 'package:test_ali/views/onboardin_view.dart';
import 'package:test_ali/views/order_accepted_view.dart';
import 'package:test_ali/views/splash_view.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
