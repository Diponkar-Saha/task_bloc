import 'package:dio/dio.dart';
import 'package:task_bloc/utils/util_constants.dart';

import '../model/product_response.dart';
import '../model/search_response.dart';
class ApiProvider {
  final Dio _dio = Dio();

  Future<SearchResponse> fetchCovidList(String slug) async {
    try {
      Response response = await _dio.get('https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=$slug');
      return SearchResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return SearchResponse.withError("Data not found / Connection issue");
    }
  }
  Future<ProductResponse> fetchProduct(String slug) async {
    try {

      Response response = await _dio.get('https://panel.supplyline.network/api/product-details/$slug/');
      print(response.data);
      return ProductResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ProductResponse.withError("Data not found / Connection issue");
    }
  }
}