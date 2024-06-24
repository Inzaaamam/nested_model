import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/screen/api_class.dart';
import 'package:nested_model/screen/home.dart';
import 'package:nested_model/screen/state/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(
        create: (context) => ListingCubit(nestedApiCalss: NestedApiCalss())),],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UserScreen(),
      ),
    );
      
  }
}
