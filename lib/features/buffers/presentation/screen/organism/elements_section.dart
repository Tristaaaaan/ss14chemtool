import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/core/appdesign/design_tokens.dart';
import 'package:ss14chemtool/features/reagents/presentation/cubit/reagent_cubit.dart';
import 'package:ss14chemtool/features/reagents/presentation/cubit/reagent_state.dart';
import 'package:ss14chemtool/shared/ui/atoms/regular_text.dart';
import 'package:ss14chemtool/shared/ui/molecules/form_textfield.dart';
import 'package:ss14chemtool/shared/ui/molecules/search_bar.dart';

import '../../../../../core/utils/winrate_input_formatter_util.dart';

class ElementsSection extends StatefulWidget {
  const ElementsSection({super.key});

  @override
  State<ElementsSection> createState() => _ElementSectionState();
}

class _ElementSectionState extends State<ElementsSection> {
  final searchController = TextEditingController();

  bool showQuickActions = false;
  bool requestActions = false;

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      final text = searchController.text;

      final isRequest = text == '/request';
      final showQuick = text.startsWith('/') && !isRequest;

      if (showQuick != showQuickActions || isRequest != requestActions) {
        setState(() {
          showQuickActions = showQuick;
          requestActions = isRequest;
        });
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _selectRequestAction() {
    const command = '/request';

    searchController.value = TextEditingValue(
      text: command,
      selection: TextSelection.collapsed(offset: command.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppSpacing.md),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RequestSearchBar(
                      controller: searchController,
                      minLength: 3,
                    ),
                  ),
                ],
              ),

              if (showQuickActions) ...[
                const SizedBox(height: AppSpacing.md),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegularText(text: 'Quick Actions', textOpacity: .5),

                    const SizedBox(height: AppSpacing.sm),

                    TextButton(
                      onPressed: _selectRequestAction,
                      child: const Text('/request'),
                    ),
                  ],
                ),
              ],

              if (requestActions) ...[
                const SizedBox(height: AppSpacing.md),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FormTextField(
                            fieldKey: 'reagent',
                            labelText: 'What do you want to get?',
                            onChanged: (value) {
                              context.read<ReagentCubit>().search(value);
                            },
                          ),
                        ),
                        SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: FormTextField(
                            fieldKey: 'reagentAmount',
                            labelText: 'Amount',
                            inputFormatters: const [
                              AmountFormatter(
                                integersOnly: false,
                                max: 10000,
                                min: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    BlocBuilder<ReagentCubit, ReagentState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () =>
                              Center(child: CircularProgressIndicator()),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          error: (error) =>
                              Center(child: Text(error.toString())),
                          empty: () => Center(child: Text('No data found')),
                          loaded: (notifData, hasMore) {
                            return ListView.builder(
                              itemBuilder: (context, index) {
                                final data = notifData![index];
                                return ListTile(
                                  title: Text(data.id),
                                  subtitle: Text(data.description),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),

                    BlocBuilder<ReagentCubit, ReagentState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (_, hasMore) {
                            if (!hasMore) {
                              return const SliverToBoxAdapter(
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Center(
                                    child: Text(
                                      'nothing follows',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              );
                            }

                            return const SliverToBoxAdapter(
                              child: SizedBox.shrink(),
                            );
                          },
                          orElse: () => const SliverToBoxAdapter(
                            child: SizedBox.shrink(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
