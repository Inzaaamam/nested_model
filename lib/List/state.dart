import 'package:equatable/equatable.dart';
import 'package:nested_model/List/list_model.dart';
abstract class ModelState extends Equatable {
  @override
  List<Object> get props => [];
}

class ModelInitial extends ModelState {}

class ModelLoading extends ModelState {}

class ModelLoaded extends ModelState {
  final List<Modelclass> listings;

  ModelLoaded(this.listings);

  @override
  List<Object> get props => [listings];
}

class ModelError extends ModelState {
  final String message;

  ModelError(this.message);

  @override
  List<Object> get props => [message];
}
