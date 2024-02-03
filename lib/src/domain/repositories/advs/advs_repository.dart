import 'package:kitap_arkadasligi/src/data/model/advs/basic/advs_basic.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_request.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/create/create_advs_response.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';
import 'package:kitap_arkadasligi/src/data/model/common/pagination/pagination.dart';

abstract class AdvsRepository {
  Future<AdvsDetail> getAdvsDetail(String advsId);
  Future<CreateAdvsResponse> createAdvs(CreateAdvsRequest request);
  Future<PagingModel<AdvsBasic>> getAdvsLists();
}
