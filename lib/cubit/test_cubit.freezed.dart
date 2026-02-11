// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TestState {

 String get errorMessage; LoadingStateEnum get loadingState; TestModel get testModel;
/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestStateCopyWith<TestState> get copyWith => _$TestStateCopyWithImpl<TestState>(this as TestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loadingState, loadingState) || other.loadingState == loadingState)&&(identical(other.testModel, testModel) || other.testModel == testModel));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,loadingState,testModel);

@override
String toString() {
  return 'TestState(errorMessage: $errorMessage, loadingState: $loadingState, testModel: $testModel)';
}


}

/// @nodoc
abstract mixin class $TestStateCopyWith<$Res>  {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) _then) = _$TestStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage, LoadingStateEnum loadingState, TestModel testModel
});


$TestModelCopyWith<$Res> get testModel;

}
/// @nodoc
class _$TestStateCopyWithImpl<$Res>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._self, this._then);

  final TestState _self;
  final $Res Function(TestState) _then;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = null,Object? loadingState = null,Object? testModel = null,}) {
  return _then(_self.copyWith(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,loadingState: null == loadingState ? _self.loadingState : loadingState // ignore: cast_nullable_to_non_nullable
as LoadingStateEnum,testModel: null == testModel ? _self.testModel : testModel // ignore: cast_nullable_to_non_nullable
as TestModel,
  ));
}
/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestModelCopyWith<$Res> get testModel {
  
  return $TestModelCopyWith<$Res>(_self.testModel, (value) {
    return _then(_self.copyWith(testModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [TestState].
extension TestStatePatterns on TestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestState value)  $default,){
final _that = this;
switch (_that) {
case _TestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestState value)?  $default,){
final _that = this;
switch (_that) {
case _TestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String errorMessage,  LoadingStateEnum loadingState,  TestModel testModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestState() when $default != null:
return $default(_that.errorMessage,_that.loadingState,_that.testModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String errorMessage,  LoadingStateEnum loadingState,  TestModel testModel)  $default,) {final _that = this;
switch (_that) {
case _TestState():
return $default(_that.errorMessage,_that.loadingState,_that.testModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String errorMessage,  LoadingStateEnum loadingState,  TestModel testModel)?  $default,) {final _that = this;
switch (_that) {
case _TestState() when $default != null:
return $default(_that.errorMessage,_that.loadingState,_that.testModel);case _:
  return null;

}
}

}

/// @nodoc


class _TestState implements TestState {
  const _TestState({required this.errorMessage, required this.loadingState, required this.testModel});
  

@override final  String errorMessage;
@override final  LoadingStateEnum loadingState;
@override final  TestModel testModel;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestStateCopyWith<_TestState> get copyWith => __$TestStateCopyWithImpl<_TestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loadingState, loadingState) || other.loadingState == loadingState)&&(identical(other.testModel, testModel) || other.testModel == testModel));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,loadingState,testModel);

@override
String toString() {
  return 'TestState(errorMessage: $errorMessage, loadingState: $loadingState, testModel: $testModel)';
}


}

/// @nodoc
abstract mixin class _$TestStateCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory _$TestStateCopyWith(_TestState value, $Res Function(_TestState) _then) = __$TestStateCopyWithImpl;
@override @useResult
$Res call({
 String errorMessage, LoadingStateEnum loadingState, TestModel testModel
});


@override $TestModelCopyWith<$Res> get testModel;

}
/// @nodoc
class __$TestStateCopyWithImpl<$Res>
    implements _$TestStateCopyWith<$Res> {
  __$TestStateCopyWithImpl(this._self, this._then);

  final _TestState _self;
  final $Res Function(_TestState) _then;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,Object? loadingState = null,Object? testModel = null,}) {
  return _then(_TestState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,loadingState: null == loadingState ? _self.loadingState : loadingState // ignore: cast_nullable_to_non_nullable
as LoadingStateEnum,testModel: null == testModel ? _self.testModel : testModel // ignore: cast_nullable_to_non_nullable
as TestModel,
  ));
}

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestModelCopyWith<$Res> get testModel {
  
  return $TestModelCopyWith<$Res>(_self.testModel, (value) {
    return _then(_self.copyWith(testModel: value));
  });
}
}

// dart format on
