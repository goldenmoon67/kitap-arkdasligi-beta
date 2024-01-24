import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import "package:get_it/get_it.dart";
import 'package:kitap_arkadasligi/src/configs/flavors.dart';
import 'package:kitap_arkadasligi/src/data/repositories/advs/advs_repository_impl.dart';
import 'package:kitap_arkadasligi/src/data/repositories/auth/auth_repository_impl.dart';
import 'package:kitap_arkadasligi/src/data/repositories/book/book_repository_impl.dart';
import 'package:kitap_arkadasligi/src/data/repositories/user/user_repository_impl.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/data/services/api/service/rest_api_service.dart';
import 'package:kitap_arkadasligi/src/data/services/oauth/oauth_secure_storage.dart';
import 'package:kitap_arkadasligi/src/data/services/secure/secure_storage_service.dart';
import 'package:kitap_arkadasligi/src/domain/managers/user_manager.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/advs/advs_repository.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/auth/auth_repository.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/book/book_repository.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/user/user_repository.dart';
import 'package:kitap_arkadasligi/src/logs/log_console.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:kitap_arkadasligi/src/utils/route/guards/auth_guard.dart';

import 'package:logger/logger.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    show
        AndroidOptions,
        FlutterSecureStorage,
        IOSOptions,
        KeychainAccessibility;

GetIt getIt = GetIt.I;

Future setupGetIt({bool testing = false}) async {
  Logger logger = Logger(
    filter: ProductionFilter(),
    printer: SimplePrinter(colors: false),
    output: LogConsole.wrap(),
  );
  getIt.registerSingleton<Logger>(logger);
  getIt.registerSingleton(AppRouter(authGuard: AuthGuard()));
  getIt.registerSingleton(FlutterSecureStorage(
    iOptions: IOSOptions(
      groupId: F.appGroupName,
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
    aOptions: const AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  ));
  getIt.registerSingleton(SecureStorageService());

  getIt.registerSingleton(OAuthSecureStorage());
  getIt.registerSingleton(UserManager());

  getIt.registerSingleton(RestApiService.dio);
  getIt.registerSingleton(RestClient(getIt<Dio>()));
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  getIt.registerLazySingleton<BookRepository>(() => BookRepositoryImpl());
  getIt.registerLazySingleton<AdvsRepository>(() => AdsvsRepositoryImpl());
}
