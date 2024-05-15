import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.prefixIcon,
    this.sufixIcon,
    this.mainAxisAlignment,
  });

  final String title;
  final IconData? prefixIcon;
  final Widget? sufixIcon;
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.3, bottom: 30),
      child: Row(
        mainAxisAlignment: mainAxisAlignment == null
            ? MainAxisAlignment.center
            : mainAxisAlignment!,
        children: [
          prefixIcon == null
              ? const SizedBox()
              : IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(prefixIcon!)),
          Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          sufixIcon == null ? const SizedBox() : sufixIcon!,
        ],
      ),
    );
  }
}
