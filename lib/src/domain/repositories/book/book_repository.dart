import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';

abstract class BookRepository {
  Future<BookDetail> bookDetail(String bookId);
  Future<void> readBook(String bookId);
  Future<void> removeReadBook(String bookId);
  Future<PagingModel<BookUserProfile>> getBooks();
}
