import 'package:camera/cubit/image_cubit.dart';
import 'package:camera/cubit/test_cubit.dart';
import 'package:camera/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<TestCubit>(create: (context) => TestCubit()),
        BlocProvider<ImageCubit>(create: (context) => ImageCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
