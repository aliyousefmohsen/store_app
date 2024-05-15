import 'package:flutter/material.dart';
import 'package:test_ali/views/components/custom_button.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 150),
          Image.asset(
            'assets/images/Track Order.png',
          ),
          const SizedBox(height: 67),
          const Text(
            textAlign: TextAlign.center,
            'Your Order has been accepted',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 28),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: const Text(
              textAlign: TextAlign.center,
              'Your items has been placcd and is on it’s way to being processed',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xff7C7C7C)),
            ),
          ),
          const SizedBox(height: 120),
          CustomButton(
            title: 'Track Order',
            onPressed: () {},
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Back to home',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
