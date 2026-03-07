// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ingredient _$IngredientFromJson(Map<String, dynamic> json) => _Ingredient(
  id: json['id'] as String,
  amount: (json['amount'] as num).toInt(),
  catalyst: json['catalyst'] as bool? ?? false,
);

Map<String, dynamic> _$IngredientToJson(_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'catalyst': instance.catalyst,
    };
