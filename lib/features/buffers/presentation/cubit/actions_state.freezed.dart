// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActionState()';
}


}

/// @nodoc
class $ActionStateCopyWith<$Res>  {
$ActionStateCopyWith(ActionState _, $Res Function(ActionState) __);
}


/// Adds pattern-matching-related methods to [ActionState].
extension ActionStatePatterns on ActionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _showRecipe value)?  showRecipe,TResult Function( _showReagents value)?  showReagents,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _showRecipe() when showRecipe != null:
return showRecipe(_that);case _showReagents() when showReagents != null:
return showReagents(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _showRecipe value)  showRecipe,required TResult Function( _showReagents value)  showReagents,}){
final _that = this;
switch (_that) {
case _showRecipe():
return showRecipe(_that);case _showReagents():
return showReagents(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _showRecipe value)?  showRecipe,TResult? Function( _showReagents value)?  showReagents,}){
final _that = this;
switch (_that) {
case _showRecipe() when showRecipe != null:
return showRecipe(_that);case _showReagents() when showReagents != null:
return showReagents(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  showRecipe,TResult Function()?  showReagents,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _showRecipe() when showRecipe != null:
return showRecipe();case _showReagents() when showReagents != null:
return showReagents();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  showRecipe,required TResult Function()  showReagents,}) {final _that = this;
switch (_that) {
case _showRecipe():
return showRecipe();case _showReagents():
return showReagents();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  showRecipe,TResult? Function()?  showReagents,}) {final _that = this;
switch (_that) {
case _showRecipe() when showRecipe != null:
return showRecipe();case _showReagents() when showReagents != null:
return showReagents();case _:
  return null;

}
}

}

/// @nodoc


class _showRecipe implements ActionState {
  const _showRecipe();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _showRecipe);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActionState.showRecipe()';
}


}




/// @nodoc


class _showReagents implements ActionState {
  const _showReagents();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _showReagents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActionState.showReagents()';
}


}




// dart format on
