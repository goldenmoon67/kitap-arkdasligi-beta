import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_request.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/advs/advs_repository.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

part 'create_advs_event.dart';
part 'create_advs_state.dart';

class CreateAdvsBloc extends Bloc<CreateAdvsEvent, CreateAdvsState> {
  AdvsRepository advsRepository = getIt<AdvsRepository>();
  BookRepository bookRepository = getIt<BookRepository>();

  CreateAdvsBloc() : super(CreateAdvsInitial()) {
    on<CreateAdvsStartEvent>(_start);
    on<CreateAdvsActionEvent>(_create);
  }

  Future<FutureOr<void>> _start(
      CreateAdvsStartEvent event, Emitter<CreateAdvsState> emit) async {
    try {
      emit(CreateAdvsLoading());
      var result = await bookRepository.getBooks();
      emit(CreateAdvsStartData(result));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<FutureOr<void>> _create(
      CreateAdvsActionEvent event, Emitter<CreateAdvsState> emit) async {
    try {
      emit(CreateAdvsLoading());
      var result = await advsRepository.createAdvs(CreateAdvsRequest(
          description: event.description,
          prodType: "book",
          prodId: event.book.id));
      emit(CreatedAdvsSuccesfully(result.advsId));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
