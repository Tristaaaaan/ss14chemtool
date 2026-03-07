import 'package:flutter/material.dart';
import 'package:ss14chemtool/core/appdesign/design_tokens.dart';
import 'package:ss14chemtool/shared/ui/atoms/regular_text.dart';
import 'package:ss14chemtool/shared/ui/molecules/sort_bottom_sheet.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const TextIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          showDragHandle: true,
          context: context,

          builder: (_) => const SortBottomSheet(),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RegularText(text: text, textSize: AppTextSize.xxs, textOpacity: .5),
          const SizedBox(width: AppSpacing.xs),
          Icon(
            icon,
            size: AppTextSize.lg,
            color: Colors.white.withValues(alpha: .5),
          ),
        ],
      ),
    );
  }
}
