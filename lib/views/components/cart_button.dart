import 'package:flutter/material.dart';
import 'package:test_ali/views/components/cart_bottom_sheet.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xff53B175)),
            minimumSize: MaterialStatePropertyAll(
                Size(MediaQuery.of(context).size.width, 62))),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const CartBottomSheet();
              });
        },
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 90,
            ),
            const Text(
              'Go to Checkout',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              width: 48,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4)),
              child: const Text(
                '''\$ 12.96''',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
