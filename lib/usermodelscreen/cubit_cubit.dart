import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_model/usermodelscreen/cubit_state.dart';
import 'package:nested_model/usermodelscreen/user_api.dart';

class UserCubit extends Cubit<UserState> {
  final UserApiClass userApiClass;
  UserCubit({required this.userApiClass,}) : super(ListingInitial()) ;
 
  Future<void> fetchListings() async {
      try {
      emit(ListingLoading());
      final listings = await userApiClass.userFatchData();
      if (!isClosed) {
        emit(ListingLoaded(listings));
      }
    } catch (e) {
      if (!isClosed) {
        emit(ListingError(e.toString())
          
        );
      }
    }
  }
}