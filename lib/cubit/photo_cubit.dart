import 'dart:developer';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  PhotoCubit() : super(PhotoInitial());
  final ImagePicker picker = ImagePicker();

  Future<void> uploadImage() async {
    emit(PhotoLoading());
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      emit(PhotoSelected(image.path));
      // final file = File(image.path);

      // final bytes=  file.readAsBytesSync();
      // final size = bytes.length;
      // if(size > )
    }
  }

  Future<void> takePhoto() async {
    emit(PhotoLoading());
    log('loading ');

    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    log('photo selected');

    if (photo != null) {
      emit(PhotoSelected(photo.path));
    }
  }

  void reset() {
    emit(PhotoInitial());
  }
}
