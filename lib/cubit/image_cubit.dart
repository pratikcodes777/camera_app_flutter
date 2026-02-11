import 'package:bloc/bloc.dart';
import 'package:camera/loading_state_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_state.dart';
part 'image_cubit.freezed.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageState.initial());

  final ImagePicker picker = ImagePicker();

  Future<void> uploadImage() async {
    emit(state.copyWith(loadingState: LoadingStateEnum.loading));
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      emit(
        state.copyWith(
          loadingState: LoadingStateEnum.success,
          path: image.path,
        ),
      );
    } else {
      emit(
        state.copyWith(
          loadingState: LoadingStateEnum.failure,
          error: "No image selected",
        ),
      );
    }
  }

  Future<void> captureImage() async {
    emit(state.copyWith(loadingState: LoadingStateEnum.loading));
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      emit(
        state.copyWith(
          loadingState: LoadingStateEnum.success,
          path: image.path,
        ),
      );
    }
  }

  void reset() {
    emit(ImageState.initial());
  }
}
