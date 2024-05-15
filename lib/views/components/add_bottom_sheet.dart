import 'package:flutter/material.dart';
import 'package:test_ali/views/components/custom_row_add_item.dart';
import 'package:test_ali/views/components/head_bottom_sheet.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //mainAxisSize: MainAxisSize.min,
      children: [
        const HeadButtomSheet(title: 'Add'),
        const Divider(
          thickness: 0.4,
        ),
        const CustomRowAddItem(left: 'Name'),
        const CustomRowAddItem(left: 'Description'),
        const CustomRowAddItem(left: 'Price'),
        const CustomRowAddItem(
          left: 'Image',
          right: 'Show   Arrow Icon ',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff53B175)),
                minimumSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 62))),
            onPressed: () {},
            child: const Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ],
    );
  }
}
