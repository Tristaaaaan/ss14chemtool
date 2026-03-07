import 'package:flutter/material.dart';

import '../../../../../core/appdesign/design_tokens.dart';
import '../../../../../shared/ui/atoms/regular_text.dart';
import '../../../../../shared/ui/atoms/text_icon.dart';

class BufferHeader extends StatelessWidget {
  const BufferHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RegularText(
          text: 'Buffers',
          textWeight: FontWeight.bold,
          textSize: AppTextSize.lg,
        ),
        Spacer(),
        TextIcon(text: 'Sort by', icon: Icons.arrow_drop_down_outlined),
      ],
    );
  }
}
