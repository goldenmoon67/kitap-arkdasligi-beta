part of 'book_bloc.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}

final class BookLoading extends BookState {}

final class BookDetailData extends BookState {
  final BookDetail book;

  BookDetailData({required this.book});
}
