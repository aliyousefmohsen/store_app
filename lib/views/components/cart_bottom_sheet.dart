import 'package:flutter/material.dart';
import 'package:test_ali/views/components/custom_button.dart';
import 'package:test_ali/views/components/custom_row_checkout.dart';
import 'package:test_ali/views/components/head_bottom_sheet.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeadButtomSheet(
          title: 'Checkout',
        ),
        Divider(
          thickness: 0.4,
        ),
        CustomRowCheckout(
          left: 'Delivery',
          right: 'Select Method',
        ),
        CustomRowCheckout(
          left: 'Pament',
        ),
        CustomRowCheckout(
          left: 'Promo Code',
          right: 'Pick discount',
        ),
        CustomRowCheckout(
          left: 'Total Cost',
          right: '''\$13.97''',
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10),
          child: Text(
            'By placing an order you agree to our',
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Text(
                'Terms ',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'And ',
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'Conditions',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              Spacer(),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 30),
          child: CustomButton(
            title: 'Place Order',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
