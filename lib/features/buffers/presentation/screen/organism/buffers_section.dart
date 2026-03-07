import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/appdesign/design_tokens.dart';
import '../../cubit/buffers_cubit.dart';
import '../../cubit/buffers_state.dart';
import '../molecule/buffer_header.dart';
import '../molecule/buffer_item.dart';

class BuffersSection extends StatefulWidget {
  const BuffersSection({super.key});

  @override
  State<BuffersSection> createState() => _BuffersSectionState();
}

class _BuffersSectionState extends State<BuffersSection> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppSpacing.md),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(child: const BufferHeader()),
          SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),
          BlocBuilder<BuffersCubit, BuffersState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                ),
                loading: () => const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error) => SliverToBoxAdapter(
                  child: Center(child: Text(error.toString())),
                ),
                empty: () => const SliverToBoxAdapter(
                  child: Center(child: Text('No data found')),
                ),
                loaded: (buffersData) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final data = buffersData[index];
                      return BufferItem(name: data.id, amount: data.amount);
                    }, childCount: buffersData!.length),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
