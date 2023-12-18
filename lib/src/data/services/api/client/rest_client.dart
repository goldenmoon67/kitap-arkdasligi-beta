import 'package:dio/dio.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/login_create_model.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @POST("login")
  Future<void> login(@Body() LoginCreateModel request);
}
