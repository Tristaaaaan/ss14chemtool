// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeResult {

 String get id; int get amount;
/// Create a copy of RecipeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeResultCopyWith<RecipeResult> get copyWith => _$RecipeResultCopyWithImpl<RecipeResult>(this as RecipeResult, _$identity);

  /// Serializes this RecipeResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'RecipeResult(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $RecipeResultCopyWith<$Res>  {
  factory $RecipeResultCopyWith(RecipeResult value, $Res Function(RecipeResult) _then) = _$RecipeResultCopyWithImpl;
@useResult
$Res call({
 String id, int amount
});




}
/// @nodoc
class _$RecipeResultCopyWithImpl<$Res>
    implements $RecipeResultCopyWith<$Res> {
  _$RecipeResultCopyWithImpl(this._self, this._then);

  final RecipeResult _self;
  final $Res Function(RecipeResult) _then;

/// Create a copy of RecipeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeResult].
extension RecipeResultPatterns on RecipeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeResult value)  $default,){
final _that = this;
switch (_that) {
case _RecipeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeResult value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int amount)  $default,) {final _that = this;
switch (_that) {
case _RecipeResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _RecipeResult() when $default != null:
return $default(_that.id,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeResult extends RecipeResult {
  const _RecipeResult({required this.id, required this.amount}): super._();
  factory _RecipeResult.fromJson(Map<String, dynamic> json) => _$RecipeResultFromJson(json);

@override final  String id;
@override final  int amount;

/// Create a copy of RecipeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeResultCopyWith<_RecipeResult> get copyWith => __$RecipeResultCopyWithImpl<_RecipeResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'RecipeResult(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$RecipeResultCopyWith<$Res> implements $RecipeResultCopyWith<$Res> {
  factory _$RecipeResultCopyWith(_RecipeResult value, $Res Function(_RecipeResult) _then) = __$RecipeResultCopyWithImpl;
@override @useResult
$Res call({
 String id, int amount
});




}
/// @nodoc
class __$RecipeResultCopyWithImpl<$Res>
    implements _$RecipeResultCopyWith<$Res> {
  __$RecipeResultCopyWithImpl(this._self, this._then);

  final _RecipeResult _self;
  final $Res Function(_RecipeResult) _then;

/// Create a copy of RecipeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_RecipeResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
