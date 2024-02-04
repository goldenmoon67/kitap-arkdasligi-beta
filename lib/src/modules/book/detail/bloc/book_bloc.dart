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
    on<ReadBookEvent>(_read);
    on<RemoveReadBookEvent>(_unRead);
    on<CommentBookEvent>(_comment);
  }

  Future<FutureOr<void>> _start(
      BookStartEvent event, Emitter<BookState> emit) async {
    try {
      var result = await bookRepository.bookDetail(bookId);
      emit(BookDetailData(book: result));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<FutureOr<void>> _read(
      ReadBookEvent event, Emitter<BookState> emit) async {
    await bookRepository.readBook(bookId);
  }

  Future<FutureOr<void>> _unRead(
      RemoveReadBookEvent event, Emitter<BookState> emit) async {
    try {
      await bookRepository.removeReadBook(bookId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<FutureOr<void>> _comment(
      CommentBookEvent event, Emitter<BookState> emit) async {
    try {
      await bookRepository.commentAbook(event.bookId, event.text);
      emit(BookSucces());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
