import 'package:flutter/material.dart';

class HeadButtomSheet extends StatelessWidget {
  const HeadButtomSheet({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              size: 28,
              Icons.close,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
