import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';

abstract class AdvsRepository {
  Future<AdvsDetail> getAdvsDetail(String advsId);
}
