import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';
import 'package:kitap_arkadasligi/src/domain/managers/user_manager.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  BookRepository bookRepository = getIt<BookRepository>();

  HomeBloc() : super(HomeInitial()) {
    on<StartEvent>(_start);
  }
  Future<FutureOr<void>> _start(
      StartEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeInitial());
      var result = await bookRepository.getBooks();
      emit(HomeStartData(books: result));
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
