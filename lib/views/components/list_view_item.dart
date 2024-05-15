import 'package:flutter/material.dart';
import 'package:test_ali/models/item_model.dart';
import 'package:test_ali/views/components/custom_icon.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
      child: SizedBox(
        height: 140,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(item.image),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                size: 25,
                                Icons.close,
                                color: Color(0xffB3B3B3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '${item.size} , price',
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              color: Color(0xff7C7C7C),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const CustomIcon(
                            iconData: Icons.remove,
                            size: 45,
                            bgColor: Colors.white,
                            iconColor: Color(0xffB3B3B3),
                          ),
                          const SizedBox(width: 16),
                          const Text("1"),
                          const SizedBox(width: 16),
                          const CustomIcon(
                            size: 45,
                            bgColor: Colors.white,
                            iconColor: Color(0xff53B175),
                          ),
                          const Spacer(),
                          Text(
                            item.price,
                            style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
