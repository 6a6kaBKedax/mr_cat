import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mr_cat/models/cat_model.dart';
import 'package:mr_cat/repository/repository.dart';

part 'cat_event.dart';

part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  CatBloc() : super(EmptyCatState()) {
    on<GetAllCatsEvent>((event, emit) async {
      try {
        List<CatModel> cats = await Repository.client.getBreeds();
        emit(CatsLoadedState(cats));
      } on DioError catch (e) {
        emit(ErrorCatsState());
      }
    });
  }
}
