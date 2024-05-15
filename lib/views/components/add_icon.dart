import 'package:flutter/material.dart';
import 'package:test_ali/views/components/custom_button.dart';
import 'package:test_ali/views/components/head_bottom_sheet.dart';

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

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadButtomSheet(title: 'Add'),
        Divider(
          thickness: 0.4,
        ),
        CustomRowAddItem(left: 'Name'),
        CustomRowAddItem(left: 'Description'),
        CustomRowAddItem(left: 'Price'),
        CustomRowAddItem(
          left: 'Image',
          right: 'Show   Arrow Icon ',
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 30),
          child: CustomButton(
            title: 'Add Item',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class CustomRowAddItem extends StatelessWidget {
  const CustomRowAddItem({super.key, required this.left, this.right});
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
              right != null
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ))
                  : const SizedBox(
                      height: 45,
                    )
            ],
          ),
          const Divider(
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
