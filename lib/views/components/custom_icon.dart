import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Color? iconColor;
  final IconData? iconData;
  final Color? bgColor;
  final double? size;
  const CustomIcon({
    super.key,
    this.iconColor,
    this.iconData,
    this.bgColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == null ? 40 : size!,
      height: size == null ? 40 : size!,
      decoration: BoxDecoration(
          color: bgColor == null ? const Color(0xff53B175) : bgColor!,
          border: Border.all(
              width: 0.1,
              color: bgColor == null
                  ? const Color(0xff53B175)
                  : const Color(0xff7C7C7C)),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        color: iconColor == null ? Colors.white : iconColor!,
        icon: Icon(
          iconData == null ? Icons.add : iconData!,
          size: 22,
        ),
        onPressed: () {},
      ),
    );
  }
}
