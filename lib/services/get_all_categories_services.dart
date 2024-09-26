import 'package:dio/dio.dart';
import 'package:shopclothes/helper/api.dart';
class  AllCategoriesServices
{
  Future<List<dynamic>>getallcategories()async
  {
    List<dynamic>data=await Api(Dio()).get(url:'https://fakestoreapi.com/products/categories');
    return data;
  }
}