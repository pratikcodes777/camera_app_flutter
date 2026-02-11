import 'dart:io';

import 'package:camera/cubit/photo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // File? imageFile;
  @override
  Widget build(BuildContext context) {
    final imageCubit = context.read<PhotoCubit>();
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
            child: BlocBuilder<PhotoCubit, PhotoState>(
              builder: (context, state) {
                if (state is PhotoLoading) {
                  return CircularProgressIndicator();
                }
                if (state is PhotoSelected) {
                  return Image.file(
                    File(state.path),
                    width: 300,
                    height: 300,
                    frameBuilder:
                        (context, child, frame, wasSynchronouslyLoaded) {
                          if (wasSynchronouslyLoaded) {
                            return child;
                          }
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: frame == null
                                ? Container(
                                    width: 300,
                                    height: 300,
                                    color: Colors.grey.shade300,
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  )
                                : child,
                          );
                        },
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
                    onPressed: imageCubit.takePhoto,
                    child: Text('Take Photo'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
