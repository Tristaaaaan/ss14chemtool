import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/appdesign/design_tokens.dart';
import '../../../../../core/utils/winrate_input_formatter_util.dart';
import '../../../../../shared/ui/atoms/regular_text.dart';
import '../../../../../shared/ui/molecules/cubit/regular_button_cubit.dart';
import '../../../../../shared/ui/molecules/form_textfield.dart';
import '../../../../../shared/ui/molecules/regular_button.dart';
import '../../../../../shared/ui/molecules/search_bar.dart';
import '../../../../reagents/presentation/cubit/reagent_cubit.dart';
import '../../../../reagents/presentation/cubit/reagent_state.dart';
import '../../../../recipe/presentation/cubit/formula_recipe_cubit.dart';
import '../../cubit/action_cubit.dart';
import '../../cubit/actions_state.dart';

class ElementsSection extends StatefulWidget {
  const ElementsSection({super.key});

  @override
  State<ElementsSection> createState() => _ElementSectionState();
}

class _ElementSectionState extends State<ElementsSection> {
  final searchController = TextEditingController();
  bool showQuickActions = false;
  bool requestActions = false;
  bool showRecipe = false;
  final amountController = TextEditingController();
  final reagentController = TextEditingController();
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
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          // Search Bar
          RequestSearchBar(controller: searchController, minLength: 3),
          SizedBox(height: AppSpacing.md),

          // Quick Actions
          if (showQuickActions)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RegularText(text: 'Quick Actions', textOpacity: .5),
                const SizedBox(height: AppSpacing.sm),
                TextButton(
                  onPressed: _selectRequestAction,
                  child: const Text('/request'),
                ),
                SizedBox(height: AppSpacing.md),
              ],
            ),

          if (requestActions)
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FormTextField(
                        fieldKey: 'reagent',
                        labelText: 'What do you want to get?',
                        controller: reagentController,
                        onChanged: (value) =>
                            context.read<ReagentCubit>().search(value),
                      ),
                    ),
                    SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: FormTextField(
                        fieldKey: 'reagentAmount',
                        labelText: 'Amount',
                        controller: amountController,
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
                SizedBox(height: AppSpacing.md),

                RegularButton(
                  onTap: () async {
                    showRecipe = true;
                    final loadingCubit = context
                        .read<RegularButtonLoadingCubit>();
                    loadingCubit.setLoading("proceedButton", true);
                    await context.read<FormulaRecipeCubit>().formulateRecipe(
                      reagentId: reagentController.text,
                      desiredAmount: double.parse(amountController.text),
                    );
                    if (!context.mounted) return;
                    context.read<ActionCubit>().showRecipe();
                    loadingCubit.setLoading("proceedButton", false);
                  },
                  withIcon: false,
                  suffixIcon: false,
                  text: "Get Recipe",
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  textColor: Colors.white,
                  buttonKey: "proceedButton",
                  width: double.infinity,
                ),
                SizedBox(height: AppSpacing.md),
                BlocBuilder<ActionCubit, ActionState>(
                  builder: (context, state) {
                    return state.when(
                      showRecipe: () {
                        return Column(children: [Text("Reagents")]);
                      },
                      showReagents: () {
                        return Column(
                          children: [
                            // List of results
                            BlocBuilder<ReagentCubit, ReagentState>(
                              builder: (context, state) {
                                return state.when(
                                  initial: () => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  loading: () => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  error: (error) =>
                                      Center(child: Text(error.toString())),
                                  empty: () =>
                                      Center(child: Text('No data found')),
                                  loaded: (notifData, hasMore) {
                                    final list = notifData ?? [];
                                    return ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: list.length,
                                      itemBuilder: (context, index) {
                                        final data = list[index];
                                        return GestureDetector(
                                          onTap: () {
                                            reagentController.text = data.name;
                                          },
                                          child: ListTile(
                                            title: Text(data.name),
                                            subtitle: Text(data.description),
                                          ),
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
                                  loaded: (data, hasMore) {
                                    final count = data?.length ?? 0;
                                    if (!hasMore && count > 10) {
                                      return Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Center(
                                          child: Text(
                                            'nothing follows',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      );
                                    }

                                    return SizedBox.shrink();
                                  },
                                  orElse: () => SizedBox.shrink(),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
        ]),
      ),
    );
  }
}

// Future<List<RequirementEntity>> checkBufferRequirements({
//   required List<BufferEntity> buffers,
//   required List<IngredientEntity> requirements,
//   required List<RecipeResultEntity> results,
//   required double desiredAmount,
// }) async {
//   final missingRequirements = <RequirementEntity>[];

//   developer.log('Buffers: $buffers');
//   developer.log('Requirements: $requirements');
//   developer.log('Results: $results');
//   developer.log('Desired Amount: $desiredAmount');

//   if (results.isEmpty) {
//     developer.log('No results found for this recipe.');
//     return missingRequirements;
//   }

//   // Assuming first result is the main product
//   final recipeOutputAmount = results.first.amount;

//   // Scale factor = how many times we need to multiply the recipe
//   final scaleFactor = desiredAmount / recipeOutputAmount;

//   // Convert buffers to map for fast lookup
//   final bufferMap = {
//     for (var b in buffers) b.id.trim().toLowerCase(): b.amount,
//   };

//   for (var req in requirements) {
//     final reqName = req.id.trim().toLowerCase();
//     final requiredAmount = req.amount * scaleFactor;
//     final currentAmount = bufferMap[reqName] ?? 0.0;

//     if (currentAmount < requiredAmount) {
//       final missingAmount = requiredAmount - currentAmount;

//       missingRequirements.add(
//         RequirementEntity(id: req.id, amount: missingAmount),
//       );
//     } else {
//       developer.log('Requirement met: $reqName');
//     }
//   }

//   return missingRequirements;
// }
