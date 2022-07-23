import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetConnect implements GetxService {
  late String token;
  late String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  //Request for getting data from the server
  //using get method from Getx
  Future<Response> getData(String uri) async {
    allowAutoSignedCert = true;
    try {
      Response response = (await get(uri));
      //print(response.bodyBytes);
     print("call api class");
      // print('get uri ' + response.statusCode.toString());
      return response;
    } catch (e) {
      print('get uri' + e.toString());

      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
