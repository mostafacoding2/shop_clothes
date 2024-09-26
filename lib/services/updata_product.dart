import 'package:dio/dio.dart';
import 'package:shopclothes/helper/api.dart';
import 'package:shopclothes/models/all_product_model.dart';
class updataProductServices
{   Future<ProductsModel>updataproduct({
     required int  id,
     required String title,
     required dynamic price,
     required String description,
     required String image,
     required String category,

   })async
   {print('product id:$id');
     Map<String ,dynamic>Data= await Api(Dio()).Put(url: 'https://fakestoreapi.com/products/$id', data:
     {  'id':id,
       'title':title,
       'price':price,
       'description':description,
       'image':image,
       'category':category
     });
     return ProductsModel.fromjeson(Data);
   }
}