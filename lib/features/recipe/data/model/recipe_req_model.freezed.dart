// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeRequirements {

 String get id; double get amount;
/// Create a copy of RecipeRequirements
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeRequirementsCopyWith<RecipeRequirements> get copyWith => _$RecipeRequirementsCopyWithImpl<RecipeRequirements>(this as RecipeRequirements, _$identity);

  /// Serializes this RecipeRequirements to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeRequirements&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'RecipeRequirements(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $RecipeRequirementsCopyWith<$Res>  {
  factory $RecipeRequirementsCopyWith(RecipeRequirements value, $Res Function(RecipeRequirements) _then) = _$RecipeRequirementsCopyWithImpl;
@useResult
$Res call({
 String id, double amount
});




}
/// @nodoc
class _$RecipeRequirementsCopyWithImpl<$Res>
    implements $RecipeRequirementsCopyWith<$Res> {
  _$RecipeRequirementsCopyWithImpl(this._self, this._then);

  final RecipeRequirements _self;
  final $Res Function(RecipeRequirements) _then;

/// Create a copy of RecipeRequirements
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeRequirements].
extension RecipeRequirementsPatterns on RecipeRequirements {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeRequirements value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeRequirements() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeRequirements value)  $default,){
final _that = this;
switch (_that) {
case _RecipeRequirements():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeRequirements value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeRequirements() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeRequirements() when $default != null:
return $default(_that.id,_that.amount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double amount)  $default,) {final _that = this;
switch (_that) {
case _RecipeRequirements():
return $default(_that.id,_that.amount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _RecipeRequirements() when $default != null:
return $default(_that.id,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeRequirements extends RecipeRequirements {
  const _RecipeRequirements({required this.id, required this.amount}): super._();
  factory _RecipeRequirements.fromJson(Map<String, dynamic> json) => _$RecipeRequirementsFromJson(json);

@override final  String id;
@override final  double amount;

/// Create a copy of RecipeRequirements
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeRequirementsCopyWith<_RecipeRequirements> get copyWith => __$RecipeRequirementsCopyWithImpl<_RecipeRequirements>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeRequirementsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeRequirements&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'RecipeRequirements(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$RecipeRequirementsCopyWith<$Res> implements $RecipeRequirementsCopyWith<$Res> {
  factory _$RecipeRequirementsCopyWith(_RecipeRequirements value, $Res Function(_RecipeRequirements) _then) = __$RecipeRequirementsCopyWithImpl;
@override @useResult
$Res call({
 String id, double amount
});




}
/// @nodoc
class __$RecipeRequirementsCopyWithImpl<$Res>
    implements _$RecipeRequirementsCopyWith<$Res> {
  __$RecipeRequirementsCopyWithImpl(this._self, this._then);

  final _RecipeRequirements _self;
  final $Res Function(_RecipeRequirements) _then;

/// Create a copy of RecipeRequirements
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_RecipeRequirements(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
