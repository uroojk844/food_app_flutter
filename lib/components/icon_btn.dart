import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    super.key,
    required this.icon,
    required this.shadow,
    this.bgColor,
    this.iconColor,
  });

  final IconData icon;
  final bool shadow;
  final Color? bgColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            if (shadow)
              const BoxShadow(
                offset: Offset(8, 8),
                color: Color.fromARGB(10, 0, 0, 0),
                blurRadius: 8,
              )
          ]),
      padding: const EdgeInsets.all(16),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
