part of 'photo_cubit.dart';

@immutable
sealed class PhotoState {}

final class PhotoInitial extends PhotoState {}

final class PhotoLoading extends PhotoState {}

final class PhotoSelected extends PhotoState {
  final String path;
  PhotoSelected(this.path);
}
