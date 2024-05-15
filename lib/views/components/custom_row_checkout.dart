import 'package:flutter/material.dart';

class CustomRowCheckout extends StatelessWidget {
  const CustomRowCheckout({
    super.key,
    required this.left,
    this.right,
  });

  final String left;

  final String? right;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                left,
                style: const TextStyle(
                  color: Color(0xff7C7C7C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
              const Spacer(),
              right == null
                  ? Image.asset('assets/images/mycart/payment.png')
                  : Text(
                      right!,
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins',
                      ),
                    ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20,
                  ))
            ],
          ),
          const Divider(
            endIndent: 25,
            indent: 25,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
