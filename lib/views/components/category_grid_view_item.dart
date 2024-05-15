import 'package:flutter/material.dart';
import 'package:test_ali/models/category_model.dart';

class CategoryGridViewItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryGridViewItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.click == null
          ? () {}
          : () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return category.click!;
              }));
            },
      child: Container(
        //  height: 300,
        //  width: 174.5,
        decoration: BoxDecoration(
          color: category.bgColor,
          borderRadius: BorderRadius.circular(18),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(category.image),
            SizedBox(
              width: 110,
              child: Text(
                maxLines: 2,
                category.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
