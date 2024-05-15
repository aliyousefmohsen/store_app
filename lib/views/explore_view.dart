import 'package:flutter/material.dart';
import 'package:test_ali/models/category_model.dart';
import 'package:test_ali/views/beverages_view.dart';
import 'package:test_ali/views/components/category_grid_view_item.dart';
import 'package:test_ali/views/components/custom_appbar.dart';
import 'package:test_ali/views/components/custom_nav_bar.dart';

class ExploreView extends StatelessWidget {
  ExploreView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      title: 'Frach Fruit & Vegetable',
      image: 'assets/images/explore/Frach fruit + Vegetable.png',
      bgColor: const Color(0xff53B175).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Cookin oil & Ghee',
      image: 'assets/images/explore/Cookin oil + Ghee.png',
      bgColor: const Color(0xffF8A44C).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Meat & Fish',
      image: 'assets/images/explore/Meat + Fish.png',
      bgColor: const Color(0xffF7A593).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Bakery & Snacks',
      image: 'assets/images/explore/Bakery + Snacks.png',
      bgColor: const Color(0xffD3B0E0).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Dairy & Eggs',
      image: 'assets/images/explore/Dairy + Eggs.png',
      bgColor: const Color(0xffFDE598).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Beverages',
      image: 'assets/images/explore/Beverages.png',
      bgColor: const Color(0xffB7DFF5).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Fruit & Vegetable',
      image: 'assets/images/explore/Frach fruit + Vegetable.png',
      bgColor: const Color(0xff836AF6).withOpacity(0.15),
      click: BeveragesView(),
    ),
    CategoryModel(
      title: 'Cookin & Ghee',
      image: 'assets/images/explore/Cookin oil + Ghee.png',
      bgColor: const Color(0xffD73B77).withOpacity(0.2),
      click: BeveragesView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Find Product',
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 174.5 / 189.11,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return CategoryGridViewItem(category: categories[index]);
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
