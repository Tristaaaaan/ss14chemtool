// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reagent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reagent _$ReagentFromJson(Map<String, dynamic> json) => _Reagent(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  recipe: json['recipe'] == null
      ? null
      : Recipe.fromJson(json['recipe'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReagentToJson(_Reagent instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'recipe': instance.recipe,
};
