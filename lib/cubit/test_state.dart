part of 'test_cubit.dart';

@freezed
abstract class TestState with _$TestState {
  const factory TestState({
    required String errorMessage,
    required LoadingStateEnum loadingState,
    required TestModel testModel,
  }) = _TestState;
  factory TestState.initial() => TestState(
    errorMessage: '',
    loadingState: LoadingStateEnum.initial,
    testModel: TestModel.empty,
  );
}
