import 'package:flutter/material.dart';
import 'package:test_ali/views/components/add_bottom_sheet.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff53B175),
      ),
      child: IconButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color(0xffF2F3F2),
                context: context,
                builder: (context) {
                  return AddBottomSheet();
                });
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
