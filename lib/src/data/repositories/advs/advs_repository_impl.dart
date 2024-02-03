import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_request.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_response.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';
import 'package:kitap_arkadasligi/src/data/services/api/client/rest_client.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/advs/advs_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';

class AdsvsRepositoryImpl extends AdvsRepository {
  final RestClient _client = getIt<RestClient>();

  @override
  Future<AdvsDetail> getAdvsDetail(String advsId) async {
    return await _client.getAdvsDetail(advsId);
  }

  @override
  Future<CreateAdvsResponse> createAdvs(CreateAdvsRequest request) async {
    return await _client.craeteAdvs(request);
  }
}
