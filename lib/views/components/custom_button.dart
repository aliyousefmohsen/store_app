// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
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
        onPressed: onPressed(),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
