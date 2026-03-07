import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/appdesign/design_tokens.dart';
import '../../../../../shared/enum/sort.dart';
import '../../../../../shared/ui/atoms/regular_text.dart';
import 'cubit/sort_cubit.dart';
import 'cubit/sort_state.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});

  String _sortOptionLabel(SortOption option) {
    switch (option) {
      case SortOption.newest:
        return "Recent First";
      case SortOption.oldest:
        return "Oldest First";
      case SortOption.alphabetical:
        return "Alphabetical";
      case SortOption.quantity:
        return "Quantity";
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SortCubit, SortState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: SortOption.values.map((option) {
            final isSelected = state.sortOption == option;

            return GestureDetector(
              onTap: () {
                context.read<SortCubit>().changeSort(option);
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.md,
                  horizontal: AppSpacing.md2,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegularText(
                      textSize: AppTextSize.sm,
                      text: _sortOptionLabel(option),
                      textOpacity: isSelected ? 1 : .5,
                      textWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                    if (isSelected)
                      const Icon(Icons.check, color: Colors.white, size: 20),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
