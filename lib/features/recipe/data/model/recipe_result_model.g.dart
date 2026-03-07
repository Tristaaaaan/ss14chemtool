// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeResult _$RecipeResultFromJson(Map<String, dynamic> json) =>
    _RecipeResult(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$RecipeResultToJson(_RecipeResult instance) =>
    <String, dynamic>{'id': instance.id, 'amount': instance.amount};
