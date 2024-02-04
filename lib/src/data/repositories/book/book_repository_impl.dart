import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/comments/request/comment_request.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';
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

  @override
  Future<PagingModel<BookUserProfile>> getBooks() async {
    return await _client.getBookList();
  }

  @override
  Future<void> commentAbook(String id, String text) {
    return _client.commentBook(id, CommentRequest(comment: text));
  }
}
