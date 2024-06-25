import 'package:equatable/equatable.dart';
import 'package:nested_model/usermodelscreen/user_model.dart';

abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}
class ListingInitial extends UserState {}

class ListingLoading extends UserState {}

class ListingLoaded extends UserState {
  final List<UserModel> listings;

  ListingLoaded(this.listings);

  @override
  List<Object> get props => [listings];
}

class ListingError extends UserState {
  final String message;

  ListingError(this.message);

  @override
  List<Object> get props => [message];
}
