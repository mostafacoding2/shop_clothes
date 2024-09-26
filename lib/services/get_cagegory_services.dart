import 'package:dio/dio.dart';
import 'package:shopclothes/helper/api.dart';
import 'package:shopclothes/models/all_product_model.dart';
class CatgegoryServices
{
  Future<List<ProductsModel>>getcatgegory({required String NameCatgegory})async
  {
    List<dynamic>data=await Api(Dio()).get(url:'https://fakestoreapi.com/products/category/$NameCatgegory');
    List<ProductsModel>listproducts=[];
    for(int i=0; i<data.length;i++)
    {
       listproducts.add(ProductsModel.fromjeson(data[i]));
    }
    return listproducts;

  }
}