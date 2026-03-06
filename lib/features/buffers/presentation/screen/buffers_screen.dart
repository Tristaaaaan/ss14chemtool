import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/features/buffers/presentation/cubit/buffers_cubit.dart';
import 'package:ss14chemtool/features/buffers/presentation/cubit/buffers_state.dart';
import 'package:ss14chemtool/features/buffers/presentation/screen/molecule/buffer_item.dart';

class BuffersScreen extends StatelessWidget {
  const BuffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
