part of 'cat_bloc.dart';

@immutable
abstract class CatState extends Equatable {
  List<CatModel>? loadedCats;

  CatState(this.loadedCats);
}

class EmptyCatState extends CatState {
  EmptyCatState() : super([]);

  @override
  List<Object?> get props => [];
}

class ErrorCatsState extends CatState {
  ErrorCatsState() : super([]);

  @override
  List<Object?> get props => [];
}

class CatsLoadedState extends CatState {
  List<CatModel>? loadedCats;

  CatsLoadedState(this.loadedCats) : super(loadedCats);

  @override
  List<Object?> get props => [loadedCats];
}
