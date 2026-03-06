import 'package:flutter/material.dart';
import 'package:ss14chemtool/core/appdesign/design_tokens.dart';
import 'package:ss14chemtool/shared/ui/atoms/regular_text.dart';

class BufferItem extends StatelessWidget {
  final String name;
  final double amount;
  const BufferItem({super.key, required this.name, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(AppRadius.xs),
      ),
      child: Column(
        children: [
          Row(
            children: [
              RegularText(text: name),
              Spacer(),
              RegularText(text: '${amount.toString()}u'),
            ],
          ),
        ],
      ),
    );
  }
}
