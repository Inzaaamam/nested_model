import 'package:bloc/bloc.dart';
import 'package:nested_model/screen/api_class.dart';
import 'package:nested_model/screen/state/state.dart';
class ListingCubit extends Cubit<ListingState> {
  final NestedApiCalss nestedApiCalss;
  ListingCubit({required this.nestedApiCalss}) : super(ListingInitial()) ;
 
  Future<void> fetchListings() async {
      try {
      emit(ListingLoading());
      final listings = await nestedApiCalss.nestedFData();
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