import 'package:flutter/material.dart';
import 'package:test_ali/models/item_model.dart';
import 'package:test_ali/views/components/cart_button.dart';
import 'package:test_ali/views/components/custom_appbar.dart';
import 'package:test_ali/views/components/custom_nav_bar.dart';
import 'package:test_ali/views/components/list_view_item.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final List<ItemModel> items = [
    ItemModel(
        title: 'Bell Pepper Red',
        image: 'assets/images/mycart/Bell Pepper Red.png',
        price: '''\$ 4.99''',
        size: '1 kg'),
    ItemModel(
        title: 'Egg Chicken Red',
        image: 'assets/images/mycart/Egg Chicken Red.png',
        price: '''\$ 1.99''',
        size: '4 pcs'),
    ItemModel(
        title: 'Organic Bananas',
        image: 'assets/images/mycart/Organic Bananas.png',
        price: '''\$ 3''',
        size: '12 kg'),
    ItemModel(
        title: 'Ginger',
        image: 'assets/images/mycart/Ginger.png',
        price: '''\$ 2.99''',
        size: '250 gm'),
    ItemModel(
        title: 'Bell Pepper Red',
        image: 'assets/images/mycart/Bell Pepper Red.png',
        price: '''\$ 4.99''',
        size: '1 kg'),
  ];

  @override
  Widget build(BuildContext context) {
    //double sumPrices = items. ;
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
          child: Column(
        children: [
          const CustomAppBar(
            title: 'My Cart',
          ),
          const Divider(
            thickness: 0.3,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListViewItem(item: items[index]);
                }),
          ),
          const CartButton(),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
