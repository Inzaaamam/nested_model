import 'package:equatable/equatable.dart';
import 'package:nested_model/screen/model.dart';

abstract class ListingState extends Equatable {
  @override
  List<Object> get props => [];
}

class ListingInitial extends ListingState {}

class ListingLoading extends ListingState {}

class ListingLoaded extends ListingState {
  final List<NestedModel> listings;

  ListingLoaded(this.listings);

  @override
  List<Object> get props => [listings];
}

class ListingError extends ListingState {
  final String message;

  ListingError(this.message);

  @override
  List<Object> get props => [message];
}
