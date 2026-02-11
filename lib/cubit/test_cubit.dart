import 'package:camera/loading_state_enum.dart';
import 'package:camera/model/test_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_state.dart';
part 'test_cubit.freezed.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestState.initial());

  Future<void> fetchTestModel() async {
    emit(state.copyWith(loadingState: LoadingStateEnum.loading));
    await Future.delayed(const Duration(seconds: 2));
    final response = TestModel(id: 1, name: 'pratik', descriptions: 'email');
    emit(
      state.copyWith(
        loadingState: LoadingStateEnum.success,
        testModel: response,
      ),
    );
  }
}
