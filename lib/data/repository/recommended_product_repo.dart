import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({
    required this.apiClient,
  });
  Future<Response> getRecommendedProductList() async {
    print('recommended');
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
