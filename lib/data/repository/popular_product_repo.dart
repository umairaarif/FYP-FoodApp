import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({
    required this.apiClient,
  });
  Future<Response> getPopularProductList() async {
    print('popular');
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
