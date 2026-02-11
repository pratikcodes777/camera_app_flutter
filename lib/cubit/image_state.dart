part of 'image_cubit.dart';

@freezed
abstract class ImageState with _$ImageState {
  const factory ImageState({
    required LoadingStateEnum loadingState,
    required String path,
    required String error,
  }) = _ImageState;
  factory ImageState.initial() => const ImageState(
    loadingState: LoadingStateEnum.initial,
    path: '',
    error: '',
  );
}
