import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';

abstract class BookRepository {
  Future<BookDetail> bookDetail(String bookId);
}
