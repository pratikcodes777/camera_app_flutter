// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageState {

 LoadingStateEnum get loadingState; String get path; String get error;
/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageStateCopyWith<ImageState> get copyWith => _$ImageStateCopyWithImpl<ImageState>(this as ImageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageState&&(identical(other.loadingState, loadingState) || other.loadingState == loadingState)&&(identical(other.path, path) || other.path == path)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,loadingState,path,error);

@override
String toString() {
  return 'ImageState(loadingState: $loadingState, path: $path, error: $error)';
}


}

/// @nodoc
abstract mixin class $ImageStateCopyWith<$Res>  {
  factory $ImageStateCopyWith(ImageState value, $Res Function(ImageState) _then) = _$ImageStateCopyWithImpl;
@useResult
$Res call({
 LoadingStateEnum loadingState, String path, String error
});




}
/// @nodoc
class _$ImageStateCopyWithImpl<$Res>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._self, this._then);

  final ImageState _self;
  final $Res Function(ImageState) _then;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadingState = null,Object? path = null,Object? error = null,}) {
  return _then(_self.copyWith(
loadingState: null == loadingState ? _self.loadingState : loadingState // ignore: cast_nullable_to_non_nullable
as LoadingStateEnum,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageState].
extension ImageStatePatterns on ImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageState value)  $default,){
final _that = this;
switch (_that) {
case _ImageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageState value)?  $default,){
final _that = this;
switch (_that) {
case _ImageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadingStateEnum loadingState,  String path,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageState() when $default != null:
return $default(_that.loadingState,_that.path,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadingStateEnum loadingState,  String path,  String error)  $default,) {final _that = this;
switch (_that) {
case _ImageState():
return $default(_that.loadingState,_that.path,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadingStateEnum loadingState,  String path,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ImageState() when $default != null:
return $default(_that.loadingState,_that.path,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ImageState implements ImageState {
  const _ImageState({required this.loadingState, required this.path, required this.error});
  

@override final  LoadingStateEnum loadingState;
@override final  String path;
@override final  String error;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageStateCopyWith<_ImageState> get copyWith => __$ImageStateCopyWithImpl<_ImageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageState&&(identical(other.loadingState, loadingState) || other.loadingState == loadingState)&&(identical(other.path, path) || other.path == path)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,loadingState,path,error);

@override
String toString() {
  return 'ImageState(loadingState: $loadingState, path: $path, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ImageStateCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$ImageStateCopyWith(_ImageState value, $Res Function(_ImageState) _then) = __$ImageStateCopyWithImpl;
@override @useResult
$Res call({
 LoadingStateEnum loadingState, String path, String error
});




}
/// @nodoc
class __$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateCopyWith<$Res> {
  __$ImageStateCopyWithImpl(this._self, this._then);

  final _ImageState _self;
  final $Res Function(_ImageState) _then;

/// Create a copy of ImageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadingState = null,Object? path = null,Object? error = null,}) {
  return _then(_ImageState(
loadingState: null == loadingState ? _self.loadingState : loadingState // ignore: cast_nullable_to_non_nullable
as LoadingStateEnum,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
