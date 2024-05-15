import 'package:flutter/material.dart';
import 'package:test_ali/models/item_model.dart';
import 'package:test_ali/views/components/add_icon.dart';

class BeveragesItem extends StatelessWidget {
  final ItemModel item;

  const BeveragesItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20, bottom: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [
          Image.asset(item.image),
          const SizedBox(height: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Text(
                item.size,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xff7C7C7C),
                ),
              ),
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xff7C7C7C),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.price,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  const AddIcon(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
