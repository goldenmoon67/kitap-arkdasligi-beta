import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

class BookRepositoryImpl extends BookRepository {
  final RestClient _client = getIt<RestClient>();

  @override
  Future<BookDetail> bookDetail(String bookId) async {
    return await _client.getBookDetail(bookId);
  }

  @override
  Future<void> readBook(String bookId) async {
    await _client.readBook(bookId);
  }

  @override
  Future<void> removeReadBook(String bookId) async {
    await _client.removeReadBook(bookId);
  }
}
