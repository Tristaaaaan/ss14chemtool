import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  final String text;
  final double? textSize;
  final double? textOpacity;
  final FontWeight? textWeight;
  final Color? textColor;
  const RegularText({
    super.key,
    required this.text,
    this.textWeight,
    this.textSize = 12,
    this.textOpacity = 1,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overflow: TextOverflow.visible,
          maxLines: 2,

          softWrap: true,
          text,
          style: TextStyle(
            fontWeight: textWeight ?? FontWeight.normal,
            fontSize: textSize,
            color:
                textColor ??
                Theme.of(
                  context,
                ).colorScheme.primary.withValues(alpha: textOpacity),
          ),
        ),
      ],
    );
  }
}
