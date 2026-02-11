import 'dart:io';

import 'package:camera/cubit/image_cubit.dart';
import 'package:camera/cubit/photo_cubit.dart';
import 'package:camera/cubit/test_cubit.dart';
import 'package:camera/model/test_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading_state_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TestModel test = TestModel(id: 1);
  // File? imageFile;
  @override
  Widget build(BuildContext context) {
    final imageCubit = context.read<ImageCubit>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // image section
            // child: imageFile != null
            //      Image.file(
            //         imageFile!,
            //         width: 300,
            //         height: 300,
            //         fit: BoxFit.contain,
            //       )
            //     : Image.asset(
            //         'assets/images/image1.jpg',
            //         width: 300,
            //         height: 300,
            //         fit: BoxFit.contain,
            //       ),
            child: BlocBuilder<ImageCubit, ImageState>(
              buildWhen: (previous, current) =>
                  previous.path != current.path ||
                  previous.loadingState != current.loadingState,
              builder: (context, state) {
                if (state.loadingState == LoadingStateEnum.loading) {
                  return SizedBox(
                    width: 300,
                    height: 300,
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (state.loadingState == LoadingStateEnum.failure) {
                  return SizedBox(
                    width: 300,
                    height: 300,
                    child: Center(child: Text(state.error)),
                  );
                } else if (state.loadingState == LoadingStateEnum.success) {
                  return Image.file(
                    File(state.path),
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  );
                } else {
                  return Image.asset(
                    'assets/images/image1.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  );
                }
              },
            ),
          ),
          SizedBox(height: 20),
          // buttons section
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 8.0),
                  child: ElevatedButton(
                    onPressed: imageCubit.uploadImage,
                    child: Text('Upload Photo'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: imageCubit.reset,
                  child: Icon(Icons.refresh),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: imageCubit.captureImage,
                    child: Text('Take Photo'),
                  ),
                ),
              ),
            ],
          ),
          BlocBuilder<TestCubit, TestState>(
            buildWhen: (previous, current) =>
                previous.testModel != current.testModel ||
                previous.loadingState != current.loadingState,
            builder: (context, state) {
              if (state.loadingState == LoadingStateEnum.loading) {
                return CircularProgressIndicator();
              } else if (state.loadingState == LoadingStateEnum.failure) {
                return Text('Error');
              } else {
                return Text(state.testModel.name);
              }
            },
          ),
          TextButton(
            onPressed: () => context.read<TestCubit>().fetchTestModel(),
            child: Text('fetch'),
          ),
        ],
      ),
    );
  }
}
