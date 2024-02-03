import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/basic/advs_basic.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/advs/advs_repository.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  BookRepository bookRepository = getIt<BookRepository>();
  AdvsRepository advsRepository = getIt<AdvsRepository>();

  HomeBloc() : super(HomeInitial()) {
    on<StartEvent>(_start);
  }
  Future<FutureOr<void>> _start(
      StartEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeInitial());
      var books = await bookRepository.getBooks();
      var advs = await advsRepository.getAdvsLists();
      emit(HomeStartData(books: books, advs: advs));
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
