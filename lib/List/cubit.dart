import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/List/api_model.dart';
import 'package:nested_model/List/state.dart';
class ModelCubit extends Cubit<ModelState> {
  final ModelApiClass modelApiClass;

  ModelCubit({required this.modelApiClass}) : super(ModelInitial());

  Future<void> fetchData() async {
    try {
      emit(ModelLoading());
      final listings = await modelApiClass.modelFatchData();
      if (!isClosed) {
        emit(ModelLoaded(listings));
      }
    } catch (e) {
      if (!isClosed) {
        emit(ModelError(e.toString()));
      }
    }
  }
}
