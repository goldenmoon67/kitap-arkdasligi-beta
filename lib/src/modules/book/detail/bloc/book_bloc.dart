import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final String bookId;
  BookRepository bookRepository = getIt<BookRepository>();

  BookBloc(this.bookId) : super(BookInitial()) {
    on<BookStartEvent>(_start);
  }

  Future<FutureOr<void>> _start(
      BookStartEvent event, Emitter<BookState> emit) async {
    emit(BookLoading());
    var result = await bookRepository.bookDetail(bookId);
    emit(BookDetailData(book: result));
  }
}
