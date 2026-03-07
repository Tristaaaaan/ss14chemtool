// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reagent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reagent {

 String get id; String get name; String? get description; Recipe? get recipe;
/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReagentCopyWith<Reagent> get copyWith => _$ReagentCopyWithImpl<Reagent>(this as Reagent, _$identity);

  /// Serializes this Reagent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reagent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.recipe, recipe) || other.recipe == recipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,recipe);

@override
String toString() {
  return 'Reagent(id: $id, name: $name, description: $description, recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $ReagentCopyWith<$Res>  {
  factory $ReagentCopyWith(Reagent value, $Res Function(Reagent) _then) = _$ReagentCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, Recipe? recipe
});


$RecipeCopyWith<$Res>? get recipe;

}
/// @nodoc
class _$ReagentCopyWithImpl<$Res>
    implements $ReagentCopyWith<$Res> {
  _$ReagentCopyWithImpl(this._self, this._then);

  final Reagent _self;
  final $Res Function(Reagent) _then;

/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? recipe = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as Recipe?,
  ));
}
/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}


/// Adds pattern-matching-related methods to [Reagent].
extension ReagentPatterns on Reagent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reagent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reagent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reagent value)  $default,){
final _that = this;
switch (_that) {
case _Reagent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reagent value)?  $default,){
final _that = this;
switch (_that) {
case _Reagent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  Recipe? recipe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reagent() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.recipe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  Recipe? recipe)  $default,) {final _that = this;
switch (_that) {
case _Reagent():
return $default(_that.id,_that.name,_that.description,_that.recipe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  Recipe? recipe)?  $default,) {final _that = this;
switch (_that) {
case _Reagent() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.recipe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reagent extends Reagent {
  const _Reagent({required this.id, required this.name, this.description, this.recipe}): super._();
  factory _Reagent.fromJson(Map<String, dynamic> json) => _$ReagentFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  Recipe? recipe;

/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReagentCopyWith<_Reagent> get copyWith => __$ReagentCopyWithImpl<_Reagent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReagentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reagent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.recipe, recipe) || other.recipe == recipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,recipe);

@override
String toString() {
  return 'Reagent(id: $id, name: $name, description: $description, recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class _$ReagentCopyWith<$Res> implements $ReagentCopyWith<$Res> {
  factory _$ReagentCopyWith(_Reagent value, $Res Function(_Reagent) _then) = __$ReagentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, Recipe? recipe
});


@override $RecipeCopyWith<$Res>? get recipe;

}
/// @nodoc
class __$ReagentCopyWithImpl<$Res>
    implements _$ReagentCopyWith<$Res> {
  __$ReagentCopyWithImpl(this._self, this._then);

  final _Reagent _self;
  final $Res Function(_Reagent) _then;

/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? recipe = freezed,}) {
  return _then(_Reagent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as Recipe?,
  ));
}

/// Create a copy of Reagent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

// dart format on
