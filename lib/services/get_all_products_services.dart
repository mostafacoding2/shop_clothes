import 'package:dio/dio.dart';
import 'package:shopclothes/helper/api.dart';
import 'package:shopclothes/models/all_product_model.dart';
class  allProductsServices
{ Future<List<ProductsModel>>getallproducts()async
 {  List<dynamic>data=await Api(Dio()).get(url:'https://fakestoreapi.com/products');
   List<ProductsModel>listproducts=[];

   for(int i=0; i<data.length;i++)
   {

     listproducts.add(ProductsModel.fromjeson(data[i]));
   }

   return listproducts;
 }
}