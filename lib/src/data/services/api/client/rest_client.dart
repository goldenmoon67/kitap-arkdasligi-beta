import 'package:dio/dio.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/basic/advs_basic.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_request.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_response.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/create/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/response/login_response.dart';
import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/comments/request/comment_request.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @POST("login")
  Future<LoginResponse> login(@Body() LoginCreateModel request);

  @GET("session-user")
  Future<User> geSessiontUser();

  @GET("books")
  Future<PagingModel<BookUserProfile>> getBookList();

  @GET("books/{id}")
  Future<BookDetail> getBookDetail(@Path() String id);

  @PUT("books/{id}/read")
  Future<void> readBook(@Path() String id);

  @PUT("books/{id}/unread")
  Future<void> removeReadBook(@Path() String id);

  @PUT("books/{id}/comment")
  Future<void> commentBook(@Path() String id, @Body() CommentRequest request);

  @GET("advs/{id}")
  Future<AdvsDetail> getAdvsDetail(@Path() String id);

  @POST("advs")
  Future<CreateAdvsResponse> craeteAdvs(@Body() CreateAdvsRequest request);

  @GET("advs")
  Future<PagingModel<AdvsBasic>> getAdvsList();
}
