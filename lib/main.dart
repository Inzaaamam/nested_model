import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/screen/api_class.dart';
import 'package:nested_model/screen/state/cubit.dart';
import 'package:nested_model/usermodelscreen/cubit_cubit.dart';
import 'package:nested_model/usermodelscreen/user_api.dart';
import 'package:nested_model/usermodelscreen/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
        create: (context) => ListingCubit(nestedApiCalss: NestedApiCalss())),
        BlocProvider(
        create: (context) => UserCubit(userApiClass: UserApiClass())),
        ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UserApiScreen(),
      ),
    );
      
  }
}
