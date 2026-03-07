import 'package:flutter/material.dart';
import 'package:ss14chemtool/core/appdesign/design_tokens.dart';
import 'package:ss14chemtool/shared/ui/molecules/search_bar.dart';

class ElementsSection extends StatefulWidget {
  const ElementsSection({super.key});

  @override
  State<ElementsSection> createState() => _ElementSectionState();
}

class _ElementSectionState extends State<ElementsSection> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppSpacing.md),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Expanded(child: RequestSearchBar(controller: searchController)),
            // other widgets
          ],
        ),
      ),
    );
  }
}
