import 'package:dio/dio.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/create/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/response/login_response.dart';
import 'package:kitap_arkadasligi/src/data/model/book/detail/book_detail.dart';
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

  @GET("books/{id}")
  Future<BookDetail> getBookDetail(@Path() String id);

  @PUT("books/{id}/read")
  Future<void> readBook(@Path() String id);

  @PUT("books/{id}/unread")
  Future<void> removeReadBook(@Path() String id);

  @GET("advs/{id}")
  Future<AdvsDetail> getAdvsDetail(@Path() String id);
}
