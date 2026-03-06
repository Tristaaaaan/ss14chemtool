// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buffer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Buffer {

 String get id; double get amount;
/// Create a copy of Buffer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BufferCopyWith<Buffer> get copyWith => _$BufferCopyWithImpl<Buffer>(this as Buffer, _$identity);

  /// Serializes this Buffer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Buffer&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'Buffer(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $BufferCopyWith<$Res>  {
  factory $BufferCopyWith(Buffer value, $Res Function(Buffer) _then) = _$BufferCopyWithImpl;
@useResult
$Res call({
 String id, double amount
});




}
/// @nodoc
class _$BufferCopyWithImpl<$Res>
    implements $BufferCopyWith<$Res> {
  _$BufferCopyWithImpl(this._self, this._then);

  final Buffer _self;
  final $Res Function(Buffer) _then;

/// Create a copy of Buffer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Buffer].
extension BufferPatterns on Buffer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Buffer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Buffer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Buffer value)  $default,){
final _that = this;
switch (_that) {
case _Buffer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Buffer value)?  $default,){
final _that = this;
switch (_that) {
case _Buffer() when $default != null:
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
case _Buffer() when $default != null:
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
case _Buffer():
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
case _Buffer() when $default != null:
return $default(_that.id,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Buffer extends Buffer {
  const _Buffer({required this.id, required this.amount}): super._();
  factory _Buffer.fromJson(Map<String, dynamic> json) => _$BufferFromJson(json);

@override final  String id;
@override final  double amount;

/// Create a copy of Buffer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BufferCopyWith<_Buffer> get copyWith => __$BufferCopyWithImpl<_Buffer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BufferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Buffer&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'Buffer(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$BufferCopyWith<$Res> implements $BufferCopyWith<$Res> {
  factory _$BufferCopyWith(_Buffer value, $Res Function(_Buffer) _then) = __$BufferCopyWithImpl;
@override @useResult
$Res call({
 String id, double amount
});




}
/// @nodoc
class __$BufferCopyWithImpl<$Res>
    implements _$BufferCopyWith<$Res> {
  __$BufferCopyWithImpl(this._self, this._then);

  final _Buffer _self;
  final $Res Function(_Buffer) _then;

/// Create a copy of Buffer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,}) {
  return _then(_Buffer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
