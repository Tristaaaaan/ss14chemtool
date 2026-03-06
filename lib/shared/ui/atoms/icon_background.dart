import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  const IconBackground({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Icon(icon, color: iconColor, size: 40),
    );
  }
}
