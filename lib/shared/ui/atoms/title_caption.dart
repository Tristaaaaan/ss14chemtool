import 'package:flutter/material.dart';

import '../../../core/appdesign/design_tokens.dart';

class TitleCaption extends StatelessWidget {
  final String title;
  final double? titleSize;
  final String caption;
  final double? captionSize;
  final double? titleOpacity;
  final double? captionOpacity;
  const TitleCaption({
    super.key,
    required this.title,
    this.titleSize = 10,
    required this.caption,
    this.captionSize = 8,
    this.titleOpacity = 1,
    this.captionOpacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: titleSize,
            color: Colors.white.withValues(alpha: titleOpacity),
          ),
        ),
        SizedBox(height: AppSpacing.xs),
        Text(
          caption,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: captionSize,
            color: Colors.white.withValues(alpha: captionOpacity),
          ),
        ),
      ],
    );
  }
}
