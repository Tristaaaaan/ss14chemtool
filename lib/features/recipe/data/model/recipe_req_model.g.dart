// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeRequirements _$RecipeRequirementsFromJson(Map<String, dynamic> json) =>
    _RecipeRequirements(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$RecipeRequirementsToJson(_RecipeRequirements instance) =>
    <String, dynamic>{'id': instance.id, 'amount': instance.amount};
