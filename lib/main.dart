import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/List/api_model.dart';
import 'package:nested_model/List/cubit.dart';
import 'package:nested_model/List/ui_screen.dart';
import 'package:nested_model/screen/api_class.dart';
import 'package:nested_model/screen/state/cubit.dart';
import 'package:nested_model/usermodelscreen/cubit_cubit.dart';
import 'package:nested_model/usermodelscreen/user_api.dart';
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
        BlocProvider(
        create: (context) => ModelCubit(modelApiClass: ModelApiClass())),
        ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UIScreen(),
      ),
    );
      
  }
}
