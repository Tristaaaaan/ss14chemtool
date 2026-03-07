import 'package:flutter/material.dart';
import 'package:ss14chemtool/features/buffers/presentation/screen/organism/elements_section.dart';

import 'organism/buffers_section.dart';

class BuffersScreen extends StatelessWidget {
  const BuffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCrossAxisGroup(
            slivers: [
              // BuffersSection gets 1 part
              SliverCrossAxisExpanded(flex: 1, sliver: BuffersSection()),
              // ElementsSection gets 2 parts (more space)
              SliverCrossAxisExpanded(flex: 2, sliver: ElementsSection()),
            ],
          ),
        ],
      ),
    );
  }
}
