import 'package:flutter/material.dart';
import 'package:test_ali/views/components/custom_row_checkout.dart';
import 'package:test_ali/views/components/head_bottom_sheet.dart';
import 'package:test_ali/views/order_accepted_view.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const HeadButtomSheet(
          title: 'Checkout',
        ),
        const Divider(
          thickness: 0.4,
        ),
        const CustomRowCheckout(
          left: 'Delivery',
          right: 'Select Method',
        ),
        const CustomRowCheckout(
          left: 'Pament',
        ),
        const CustomRowCheckout(
          left: 'Promo Code',
          right: 'Pick discount',
        ),
        const CustomRowCheckout(
          left: 'Total Cost',
          right: '''\$13.97''',
        ),
        const Padding(
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
        const Padding(
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
        const Padding(
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
          padding: const EdgeInsets.only(top: 15, bottom: 30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff53B175)),
                  minimumSize: MaterialStatePropertyAll(
                      Size(MediaQuery.of(context).size.width, 62))),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const OrderAcceptedView();
                  },
                ));
              },
              child: const Text(
                'Place Order',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
