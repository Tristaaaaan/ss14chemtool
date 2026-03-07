// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  method: json['method'] as String,
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => RecipeResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'method': instance.method,
  'ingredients': instance.ingredients,
  'results': instance.results,
};
