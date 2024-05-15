import 'package:flutter/material.dart';
import 'package:test_ali/models/item_model.dart';
import 'package:test_ali/views/components/beverages_item.dart';

import 'package:test_ali/views/components/custom_appbar.dart';
import 'package:test_ali/views/components/custom_icon.dart';

class BeveragesView extends StatelessWidget {
  BeveragesView({super.key});
  final List<ItemModel> items = [
    ItemModel(
        title: 'Diet Coke',
        image: 'assets/images/beverages/Diet Coke.png',
        price: '''\$ 1.99''',
        size: '355 ml'),
    ItemModel(
        title: 'Sprite Can',
        image: 'assets/images/beverages/Sprite Can.png',
        price: "'\$ 1.50'",
        size: '325 ml'),
    ItemModel(
        title: 'apple & Grape juice',
        image: 'assets/images/beverages/apple + grape juice.png',
        price: '''\$ 5.99''',
        size: '2 L'),
    ItemModel(
        title: 'Orenge Juice',
        image: 'assets/images/beverages/Orenge Juice.png',
        price: '''\$ 8.99''',
        size: '2 L'),
    ItemModel(
        title: 'Coca Cola Can',
        image: 'assets/images/beverages/Coca Cola Can.png',
        price: '''\$ 4.99''',
        size: '325 ml'),
    ItemModel(
        title: 'Pepsi Can',
        image: 'assets/images/beverages/Pepsi Can.png',
        price: '4.99',
        size: '''\$ 330 ml'''),
    ItemModel(
        title: 'Diet Coke',
        image: 'assets/images/beverages/Diet Coke.png',
        price: '4.99',
        size: '''\$ 330 ml'''),
    ItemModel(
        title: 'Sprite Can',
        image: 'assets/images/beverages/Sprite Can.png',
        price: '''\$ 1.50''',
        size: '325 ml'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const CustomAppBar(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              sufixIcon: CustomIcon(),
              prefixIcon: Icons.arrow_back_ios,
              title: 'Find Product',
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 173.32 / 275.51,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return BeveragesItem(item: items[index]);
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
