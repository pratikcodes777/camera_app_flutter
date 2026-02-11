import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';

@freezed
abstract class TestModel with _$TestModel {
  const factory TestModel({
    required int id,
    @Default('') String name,
    @Default('') String? descriptions,
    @Default('') @JsonKey(name: 'created_date') String createdDate,
  }) = _TestModel;

  static const empty = TestModel(id: -1);
}
